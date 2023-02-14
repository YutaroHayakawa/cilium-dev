/*
Copyright © 2023 NAME HERE <EMAIL ADDRESS>

*/
package cmd

import (
	"fmt"
	"os"
	"os/exec"
	"strings"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
	"cuelang.org/go/pkg/encoding/yaml"
	"github.com/spf13/cobra"
)

var (
	enableHubble      bool
	enableClusterMesh bool
	chartDirectory    string
)

// deployCmd represents the deploy command
var deployCmd = &cobra.Command{
	Use:   "deploy",
	Short: "Deploy k8s cluster and install Cilium CNI on top of it",
	Long: `This command reads CUE file(s) with Clusters (list of k8s clusters) and
	Values (Cilium Helm values) declared and builds clusters and helm values. Clusters and
	Values must have the same length since they will be associated by the index of
	the array.`,
	Args: cobra.MatchAll(cobra.ArbitraryArgs),
	Run: func(cmd *cobra.Command, args []string) {
		clusters, values, err := parseCUEFiles(args)
		if err != nil {
			fmt.Printf("Deploy failed: %v\n", err)
			os.Exit(1)
		}

		if len(clusters) != len(values) || len(clusters) == 0 {
			fmt.Println("Number of the clusters must be non-zero and matched with number of the values")
			os.Exit(1)
		}

		caContextNameVal := clusters[0].LookupPath(cue.ParsePath("#Out.cluster.contextName"))
		caContextName, err := caContextNameVal.String()
		if err != nil {
			fmt.Printf("Failed to get context name: %v\n", err)
			os.Exit(1)
		}

		for i := 0; i < len(clusters); i++ {
			if err := deployK8sCluster(clusters[i]); err != nil {
				fmt.Printf("Failed to deploy k8s cluster: %v\n", err)
				os.Exit(1)
			}

			if err := deployCilium(values[i], i == 0, caContextName); err != nil {
				fmt.Printf("Failed to deploy Cilium: %v\n", err)
				os.Exit(1)
			}

			if enableHubble {
				if err := deployHubble(values[i]); err != nil {
					fmt.Printf("Failed to enable Hubble: %v\n", err)
					os.Exit(1)
				}
			}

			if enableClusterMesh {
				if err := deployClusterMesh(values[i]); err != nil {
					fmt.Printf("Failed to enable ClusterMesh: %v\n", err)
					os.Exit(1)
				}
			}
		}

		if enableClusterMesh {
			if err := meshClusters(clusters); err != nil {
				fmt.Printf("Failed to mesh clusters: %v\n", err)
			}
		}
	},
}

func parseCUEFiles(fnames []string) ([]cue.Value, []cue.Value, error) {
	ctx := cuecontext.New()

	bis := load.Instances(fnames, nil)
	if len(bis) != 1 {
		fmt.Println("# of build instance must be 1")
	}

	bi := bis[0]
	if bi.Err != nil {
		return nil, nil, fmt.Errorf("Error during load: %w", bi.Err)
	}

	value := ctx.BuildInstance(bi)
	if value.Err() != nil {
		return nil, nil, fmt.Errorf("Error during build: %w", value.Err())
	}

	err := value.Eval().Validate()
	if err != nil {
		return nil, nil, fmt.Errorf("Error during validation: %w", err)
	}

	clusters := []cue.Value{}
	clusterIter, _ := value.LookupPath(cue.ParsePath("Clusters")).List()
	for clusterIter.Next() {
		clusters = append(clusters, clusterIter.Value())
	}

	values := []cue.Value{}
	valueIter, _ := value.LookupPath(cue.ParsePath("Values")).List()
	for valueIter.Next() {
		values = append(values, valueIter.Value())
	}

	return clusters, values, nil
}

func deployKindCluster(cluster cue.Value) error {
	cmd := exec.Command("kind", "create", "cluster", "--config", "/dev/stdin")

	clusterYAML, err := yaml.Marshal(cluster)
	if err != nil {
		return err
	}

	cmd.Stdin = strings.NewReader(clusterYAML)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

func deployK8sCluster(cluster cue.Value) error {
	apiVersionValue := cluster.LookupPath(cue.ParsePath("apiVersion"))
	kindValue := cluster.LookupPath(cue.ParsePath("kind"))

	apiVersion, err := apiVersionValue.String()
	if err != nil {
		return err
	}

	kind, err := kindValue.String()
	if err != nil {
		return err
	}

	// Kind cluster
	if apiVersion == "kind.x-k8s.io/v1alpha4" && kind == "Cluster" {
		err := deployKindCluster(cluster)
		if err != nil {
			return err
		}
	}

	return err
}

func deployCilium(values cue.Value, isCA bool, caContextName string) error {
	command := "cilium"
	args := []string{"install", "--helm-values", "/dev/stdin", "--wait"}

	if chartDirectory != "" {
		args = append(args, "--chart-directory", chartDirectory)
	}

	if enableClusterMesh && !isCA {
		args = append(args, "--inherit-ca", caContextName)
	}

	// Workaround for https://github.com/cilium/cilium-cli/issues/1347
	clusterNameVal := values.LookupPath(cue.ParsePath("cluster.name"))
	if clusterName, err := clusterNameVal.String(); err == nil {
		args = append(args, "--cluster-name", clusterName)
	}

	cmd := exec.Command(command, args...)

	valuesYAML, err := yaml.Marshal(values)
	if err != nil {
		return err
	}

	cmd.Stdin = strings.NewReader(valuesYAML)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

func deployHubble(values cue.Value) error {
	command := "cilium"
	args := []string{"hubble", "enable", "--helm-values", "/dev/stdin", "--wait"}

	if chartDirectory != "" {
		args = append(args, "--chart-directory", chartDirectory)
	}

	cmd := exec.Command(command, args...)

	valuesYAML, err := yaml.Marshal(values)
	if err != nil {
		return err
	}

	cmd.Stdin = strings.NewReader(valuesYAML)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

func deployClusterMesh(values cue.Value) error {
	command := "cilium"
	args := []string{"clustermesh", "enable", "--service-type", "NodePort"}

	// Currently, `cilium clustermesh enable` cannot take Helm values. Emulate it.
	apiServerImage, _ := values.LookupPath(cue.ParsePath("clustermesh.apiserver.image.repository")).String()
	apiServerTag, _ := values.LookupPath(cue.ParsePath("clustermesh.apiserver.image.tag")).String()
	if apiServerImage != "" && apiServerTag != "" {
		args = append(args, "--apiserver-image", fmt.Sprintf("%s:%s", apiServerImage, apiServerTag))
	}

	cmd := exec.Command(command, args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {
		return err
	}

	cmd = exec.Command("cilium", "clustermesh", "status", "--wait")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

func meshClusters(clusters []cue.Value) error {
	command := "cilium"

	for i, src := range clusters {
		for _, dst := range clusters[i+1:] {
			srcContext, _ := src.LookupPath(cue.ParsePath("#Out.cluster.contextName")).String()
			dstContext, _ := dst.LookupPath(cue.ParsePath("#Out.cluster.contextName")).String()

			args := []string{
				"clustermesh", "connect", "--context", srcContext, "--destination-context", dstContext,
			}

			cmd := exec.Command(command, args...)

			cmd.Stdout = os.Stdout
			cmd.Stderr = os.Stderr

			if err := cmd.Run(); err != nil {
				return err
			}
		}
	}

	return nil
}

func init() {
	rootCmd.AddCommand(deployCmd)
	deployCmd.Flags().BoolVar(&enableHubble, "enable-hubble", true, "Enable Hubble on deploy")
	deployCmd.Flags().BoolVar(&enableClusterMesh, "enable-cluster-mesh", false, "Enable ClusterMesh")
	deployCmd.Flags().StringVar(&chartDirectory, "chart-directory", "", "Specify Chart directory")
}

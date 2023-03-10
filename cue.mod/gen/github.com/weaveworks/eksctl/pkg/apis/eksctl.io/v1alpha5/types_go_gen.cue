// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/weaveworks/eksctl/pkg/apis/eksctl.io/v1alpha5

package v1alpha5

import (
	"time"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	corev1 "k8s.io/api/core/v1"
)

#Version1_21: "1.21"
#Version1_22: "1.22"
#Version1_23: "1.23"
#Version1_24: "1.24"

// DefaultVersion (default)
#DefaultVersion:               "1.24"
#LatestVersion:                "1.24"
#DockershimDeprecationVersion: "1.24"

// Version1_10 represents Kubernetes version 1.10.x
#Version1_10: "1.10"

// Version1_11 represents Kubernetes version 1.11.x
#Version1_11: "1.11"

// Version1_12 represents Kubernetes version 1.12.x
#Version1_12: "1.12"

// Version1_13 represents Kubernetes version 1.13.x
#Version1_13: "1.13"

// Version1_14 represents Kubernetes version 1.14.x
#Version1_14: "1.14"

// Version1_15 represents Kubernetes version 1.15.x
#Version1_15: "1.15"

// Version1_16 represents Kubernetes version 1.16.x
#Version1_16: "1.16"

// Version1_17 represents Kubernetes version 1.17.x
#Version1_17: "1.17"

// Version1_18 represents Kubernetes version 1.18.x
#Version1_18: "1.18"

// Version1_19 represents Kubernetes version 1.19.x
#Version1_19: "1.19"

// Version1_20 represents Kubernetes version 1.20.x
#Version1_20: "1.20"

// Version1_25 represents Kubernetes version 1.25.x
#Version1_25: "1.25"

// AWSDebugLevel defines the LogLevel for AWS produced logs
#AWSDebugLevel: 5

// RegionUSWest1 represents the US West Region North California
#RegionUSWest1: "us-west-1"

// RegionUSWest2 represents the US West Region Oregon
#RegionUSWest2: "us-west-2"

// RegionUSEast1 represents the US East Region North Virginia
#RegionUSEast1: "us-east-1"

// RegionUSEast2 represents the US East Region Ohio
#RegionUSEast2: "us-east-2"

// RegionCACentral1 represents the Canada Central Region
#RegionCACentral1: "ca-central-1"

// RegionEUWest1 represents the EU West Region Ireland
#RegionEUWest1: "eu-west-1"

// RegionEUWest2 represents the EU West Region London
#RegionEUWest2: "eu-west-2"

// RegionEUWest3 represents the EU West Region Paris
#RegionEUWest3: "eu-west-3"

// RegionEUNorth1 represents the EU North Region Stockholm
#RegionEUNorth1: "eu-north-1"

// RegionEUCentral1 represents the EU Central Region Frankfurt
#RegionEUCentral1: "eu-central-1"

// RegionEUCentral2 represents the EU Central Region Zurich.
#RegionEUCentral2: "eu-central-2"

// RegionEUSouth1 represents the Eu South Region Milan
#RegionEUSouth1: "eu-south-1"

// RegionEUSouth2 represents the Eu South Region Spain
#RegionEUSouth2: "eu-south-2"

// RegionAPNorthEast1 represents the Asia-Pacific North East Region Tokyo
#RegionAPNorthEast1: "ap-northeast-1"

// RegionAPNorthEast2 represents the Asia-Pacific North East Region Seoul
#RegionAPNorthEast2: "ap-northeast-2"

// RegionAPNorthEast3 represents the Asia-Pacific North East region Osaka
#RegionAPNorthEast3: "ap-northeast-3"

// RegionAPSouthEast1 represents the Asia-Pacific South East Region Singapore
#RegionAPSouthEast1: "ap-southeast-1"

// RegionAPSouthEast2 represents the Asia-Pacific South East Region Sydney
#RegionAPSouthEast2: "ap-southeast-2"

// RegionAPSouthEast3 represents the Asia-Pacific South East Region Jakarta
#RegionAPSouthEast3: "ap-southeast-3"

// RegionAPSouth1 represents the Asia-Pacific South Region Mumbai
#RegionAPSouth1: "ap-south-1"

// RegionAPSouth2 represents the Asia-Pacific South Region Hyderabad
#RegionAPSouth2: "ap-south-2"

// RegionAPEast1 represents the Asia Pacific Region Hong Kong
#RegionAPEast1: "ap-east-1"

// RegionMECentral1 represents the Middle East Region Dubai
#RegionMECentral1: "me-central-1"

// RegionMESouth1 represents the Middle East Region Bahrain
#RegionMESouth1: "me-south-1"

// RegionSAEast1 represents the South America Region Sao Paulo
#RegionSAEast1: "sa-east-1"

// RegionAFSouth1 represents the Africa Region Cape Town
#RegionAFSouth1: "af-south-1"

// RegionCNNorthwest1 represents the China region Ningxia
#RegionCNNorthwest1: "cn-northwest-1"

// RegionCNNorth1 represents the China region Beijing
#RegionCNNorth1: "cn-north-1"

// RegionUSGovWest1 represents the region GovCloud (US-West)
#RegionUSGovWest1: "us-gov-west-1"

// RegionUSGovEast1 represents the region GovCloud (US-East)
#RegionUSGovEast1: "us-gov-east-1"

// DefaultRegion defines the default region, where to deploy the EKS cluster
#DefaultRegion: "us-west-2"

#PartitionAWS:   "aws"
#PartitionChina: "aws-cn"
#PartitionUSGov: "aws-us-gov"

// DefaultNodeImageFamily (default)
#DefaultNodeImageFamily:                        "AmazonLinux2"
#NodeImageFamilyAmazonLinux2:                   "AmazonLinux2"
#NodeImageFamilyUbuntu2004:                     "Ubuntu2004"
#NodeImageFamilyUbuntu1804:                     "Ubuntu1804"
#NodeImageFamilyBottlerocket:                   "Bottlerocket"
#NodeImageFamilyWindowsServer2019CoreContainer: "WindowsServer2019CoreContainer"
#NodeImageFamilyWindowsServer2019FullContainer: "WindowsServer2019FullContainer"
#NodeImageFamilyWindowsServer2022CoreContainer: "WindowsServer2022CoreContainer"
#NodeImageFamilyWindowsServer2022FullContainer: "WindowsServer2022FullContainer"

#NodeImageFamilyWindowsServer2004CoreContainer: "WindowsServer2004CoreContainer"
#NodeImageFamilyWindowsServer20H2CoreContainer: "WindowsServer20H2CoreContainer"

#ContainerRuntimeContainerD:       "containerd"
#ContainerRuntimeDockerD:          "dockerd"
#ContainerRuntimeDockerForWindows: "docker"

// DefaultNodeType is the default instance type to use for nodes
#DefaultNodeType: "m5.large"

// DefaultNodeCount defines the default number of nodes to be created
#DefaultNodeCount: 2

// DefaultMaxSize defines the default maximum number of nodes inside the ASG
#DefaultMaxSize: 1

// NodeImageResolverAuto represents auto AMI resolver (see ami package)
#NodeImageResolverAuto: "auto"

// NodeImageResolverAutoSSM is used to indicate that the latest EKS AMIs should be used for the nodes. The AMI is selected
// using an SSM GetParameter query
#NodeImageResolverAutoSSM: "auto-ssm"

// EksctlVersionTag defines the version of eksctl which is used to provision or update EKS cluster
#EksctlVersionTag: "alpha.eksctl.io/eksctl-version"

// ClusterNameTag defines the tag of the cluster name
#ClusterNameTag: "alpha.eksctl.io/cluster-name"

// ClusterOIDCEnabledTag determines whether OIDC is enabled or not.
#ClusterOIDCEnabledTag: "alpha.eksctl.io/cluster-oidc-enabled"

// OldClusterNameTag defines the tag of the cluster name
#OldClusterNameTag: "eksctl.cluster.k8s.io/v1alpha1/cluster-name"

// NodeGroupNameTag defines the tag of the nodegroup name
#NodeGroupNameTag: "alpha.eksctl.io/nodegroup-name"

// NodeGroupTypeTag defines the nodegroup type as managed or unmanaged
#NodeGroupTypeTag: "alpha.eksctl.io/nodegroup-type"

// OldNodeGroupNameTag defines the tag of the nodegroup name
#OldNodeGroupNameTag: "eksctl.io/v1alpha2/nodegroup-name"

// OldNodeGroupIDTag defines the old version of tag of the nodegroup name
#OldNodeGroupIDTag: "eksctl.cluster.k8s.io/v1alpha1/nodegroup-id"

// IAMServiceAccountNameTag defines the tag of the IAM service account name
#IAMServiceAccountNameTag: "alpha.eksctl.io/iamserviceaccount-name"

// AddonNameTag defines the tag of the IAM service account name
#AddonNameTag: "alpha.eksctl.io/addon-name"

// ClusterNameLabel defines the tag of the cluster name
#ClusterNameLabel: "alpha.eksctl.io/cluster-name"

// NodeGroupNameLabel defines the label of the nodegroup name
#NodeGroupNameLabel: "alpha.eksctl.io/nodegroup-name"

// KarpenterNameTag defines the tag of the Karpenter stack name
#KarpenterNameTag: "alpha.eksctl.io/karpenter-name"

// KarpenterVersionTag defines the tag for Karpenter's version
#KarpenterVersionTag:   "alpha.eksctl.io/karpenter-version"
#EKSNodeGroupNameLabel: "eks.amazonaws.com/nodegroup"

// SpotAllocationStrategyLowestPrice defines the ASG spot allocation strategy of lowest-price
#SpotAllocationStrategyLowestPrice: "lowest-price"

// SpotAllocationStrategyCapacityOptimized defines the ASG spot allocation strategy of capacity-optimized
#SpotAllocationStrategyCapacityOptimized: "capacity-optimized"

// SpotAllocationStrategyCapacityOptimizedPrioritized defines the ASG spot allocation strategy of capacity-optimized-prioritized
// Use the??capacity-optimized-prioritized??allocation strategy and then set the order of instance types in
// the list of launch template overrides from highest to lowest priority (first to last in the list).
// Amazon EC2 Auto Scaling honors the instance type priorities on a best-effort basis but optimizes
// for capacity first. This is a good option for workloads where the possibility of disruption must be
// minimized, but also the preference for certain instance types matters.
// https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html#asg-spot-strategy
#SpotAllocationStrategyCapacityOptimizedPrioritized: "capacity-optimized-prioritized"

// eksResourceAccountStandard defines the AWS EKS account ID that provides node resources in default regions
// for standard AWS partition
_#eksResourceAccountStandard: "602401143452"

// eksResourceAccountAPEast1 defines the AWS EKS account ID that provides node resources in ap-east-1 region
_#eksResourceAccountAPEast1: "800184023465"

// eksResourceAccountMECentral1 defines the AWS EKS account ID that provides node resources in me-central-1 region
_#eksResourceAccountMECentral1: "759879836304"

// eksResourceAccountMESouth1 defines the AWS EKS account ID that provides node resources in me-south-1 region
_#eksResourceAccountMESouth1: "558608220178"

// eksResourceAccountCNNorthWest1 defines the AWS EKS account ID that provides node resources in cn-northwest-1 region
_#eksResourceAccountCNNorthWest1: "961992271922"

// eksResourceAccountCNNorth1 defines the AWS EKS account ID that provides node resources in cn-north-1
_#eksResourceAccountCNNorth1: "918309763551"

// eksResourceAccountAFSouth1 defines the AWS EKS account ID that provides node resources in af-south-1
_#eksResourceAccountAFSouth1: "877085696533"

// eksResourceAccountEUSouth1 defines the AWS EKS account ID that provides node resources in eu-south-1
_#eksResourceAccountEUSouth1: "590381155156"

// eksResourceAccountEUSouth2 defines the AWS EKS account ID that provides node resources in eu-south-2
_#eksResourceAccountEUSouth2: "455263428931"

// eksResourceAccountEUCentral2 defines the AWS EKS account ID that provides node resources in eu-central-2.
_#eksResourceAccountEUCentral2: "900612956339"

// eksResourceAccountUSGovWest1 defines the AWS EKS account ID that provides node resources in us-gov-west-1
_#eksResourceAccountUSGovWest1: "013241004608"

// eksResourceAccountUSGovEast1 defines the AWS EKS account ID that provides node resources in us-gov-east-1
_#eksResourceAccountUSGovEast1: "151742754352"

// eksResourceAccountAPSouth2 defines the AWS EKS account ID that provides node resources in ap-south-2
_#eksResourceAccountAPSouth2: "900889452093"

// eksResourceAccountAPSouthEast3 defines the AWS EKS account ID that provides node resources in ap-southeast-3
_#eksResourceAccountAPSouthEast3: "296578399912"

// NodeVolumeTypeGP2 is General Purpose SSD
#NodeVolumeTypeGP2: "gp2"

// NodeVolumeTypeGP3 is General Purpose SSD which can be optimised for high throughput (default)
#NodeVolumeTypeGP3: "gp3"

// NodeVolumeTypeIO1 is Provisioned IOPS SSD
#NodeVolumeTypeIO1: "io1"

// NodeVolumeTypeSC1 is Cold HDD
#NodeVolumeTypeSC1: "sc1"

// NodeVolumeTypeST1 is Throughput Optimized HDD
#NodeVolumeTypeST1: "st1"

// NodeGroupType defines the nodegroup type
#NodeGroupType: string // #enumNodeGroupType

#enumNodeGroupType:
	#NodeGroupTypeManaged |
	#NodeGroupTypeUnmanaged |
	#NodeGroupTypeUnowned

// NodeGroupTypeManaged defines a managed nodegroup
#NodeGroupTypeManaged: #NodeGroupType & "managed"

// NodeGroupTypeUnmanaged defines an unmanaged nodegroup
#NodeGroupTypeUnmanaged: #NodeGroupType & "unmanaged"

// NodeGroupTypeUnowned defines an unowned managed nodegroup
#NodeGroupTypeUnowned: #NodeGroupType & "unowned"

// DefaultNodeVolumeThroughput defines the default throughput for gp3 volumes, set to the min value
#DefaultNodeVolumeThroughput: 125

// DefaultNodeVolumeIO1IOPS defines the default throughput for io1 volumes, set to the min value
#DefaultNodeVolumeIO1IOPS: 100

// DefaultNodeVolumeGP3IOPS defines the default throughput for gp3, set to the min value
#DefaultNodeVolumeGP3IOPS: 3000

// IPV4Family defines an IP family of v4 to be used when creating a new VPC and cluster.
#IPV4Family: "IPv4"

// IPV6Family defines an IP family of v6 to be used when creating a new VPC and cluster.
#IPV6Family: "IPv6"

_#minimumVPCCNIVersionForIPv6: "1.10.0"
#VPCCNIAddon:                  "vpc-cni"
#KubeProxyAddon:               "kube-proxy"
#CoreDNSAddon:                 "coredns"
#AWSEBSCSIDriverAddon:         "aws-ebs-csi-driver"

_#supportedKarpenterVersion: "v0.17.0"

#OpenCapacityReservation: "open"
#NoneCapacityReservation: "none"

// ClusterMeta contains general cluster information
#ClusterMeta: {
	// Name of the cluster
	// +required
	name: string @go(Name)

	// the AWS region hosting this cluster
	// +required
	region: string @go(Region)

	// Valid variants are `KubernetesVersion` constants
	// +optional
	version?: string @go(Version)

	// Tags are used to tag AWS resources created by eksctl
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)

	// Annotations are arbitrary metadata ignored by `eksctl`.
	// +optional
	annotations?: {[string]: string} @go(Annotations,map[string]string)
}

// KubernetesNetworkConfig contains cluster networking options
#KubernetesNetworkConfig: {
	// Valid variants are `IPFamily` constants
	// +optional
	ipFamily?: string @go(IPFamily)

	// ServiceIPv4CIDR is the CIDR range from where `ClusterIP`s are assigned
	serviceIPv4CIDR?: string @go(ServiceIPv4CIDR)
}

#EKSCTLCreated: string

// ClusterStatus holds read-only attributes of a cluster
#ClusterStatus: {
	endpoint?:                 string         @go(Endpoint)
	certificateAuthorityData?: bytes          @go(CertificateAuthorityData,[]byte)
	arn?:                      string         @go(ARN)
	stackName?:                string         @go(StackName)
	eksctlCreated?:            #EKSCTLCreated @go(EKSCTLCreated)
}

// ClusterProvider is the interface to AWS APIs
#ClusterProvider: _

// STSPresigner defines the method to pre-sign GetCallerIdentity requests to add a proper header required by EKS for
// authentication from the outside.
//
//go:generate go run github.com/maxbrunsfeld/counterfeiter/v6 -generate
//counterfeiter:generate -o fakes/fake_sts_presigner.go . STSPresigner
#STSPresigner: _

// ProviderConfig holds global parameters for all interactions with AWS APIs
#ProviderConfig: {
	CloudFormationRoleARN:         string
	CloudFormationDisableRollback: bool
	Region:                        string
	Profile:                       #Profile
	WaitTimeout:                   time.#Duration
}

// Profile is the AWS profile to use.
#Profile: {
	Name:           string
	SourceIsEnvVar: bool
}

// ClusterConfig is a simple config, to be replaced with Cluster API
#ClusterConfig: {
	TypeMeta: metav1.#TypeMeta

	// +required
	metadata?: null | #ClusterMeta @go(Metadata,*ClusterMeta)

	// +optional
	kubernetesNetworkConfig?: null | #KubernetesNetworkConfig @go(KubernetesNetworkConfig,*KubernetesNetworkConfig)

	// +optional
	iam?: null | #ClusterIAM @go(IAM,*ClusterIAM)

	// +optional
	iamIdentityMappings?: [...null | #IAMIdentityMapping] @go(IAMIdentityMappings,[]*IAMIdentityMapping)

	// +optional
	identityProviders?: [...#IdentityProvider] @go(IdentityProviders,[]IdentityProvider)

	// +optional
	vpc?: null | #ClusterVPC @go(VPC,*ClusterVPC)

	// +optional
	addons?: [...null | #Addon] @go(Addons,[]*Addon)

	// PrivateCluster allows configuring a fully-private cluster
	// in which no node has outbound internet access, and private access
	// to AWS services is enabled via VPC endpoints
	// +optional
	privateCluster?: null | #PrivateCluster @go(PrivateCluster,*PrivateCluster)

	// NodeGroups For information and examples see [nodegroups](/usage/managing-nodegroups)
	// +optional
	nodeGroups?: [...null | #NodeGroup] @go(NodeGroups,[]*NodeGroup)

	// ManagedNodeGroups See [Nodegroups usage](/usage/managing-nodegroups)
	// and [managed nodegroups](/usage/eks-managed-nodes/)
	// +optional
	managedNodeGroups?: [...null | #ManagedNodeGroup] @go(ManagedNodeGroups,[]*ManagedNodeGroup)

	// +optional
	fargateProfiles?: [...null | #FargateProfile] @go(FargateProfiles,[]*FargateProfile)

	// +optional
	availabilityZones?: [...string] @go(AvailabilityZones,[]string)

	// LocalZones specifies a list of local zones where the subnets should be created.
	// Only self-managed nodegroups can be launched in local zones. These subnets are not passed to EKS.
	// +optional
	localZones?: [...string] @go(LocalZones,[]string)

	// See [CloudWatch support](/usage/cloudwatch-cluster-logging/)
	// +optional
	cloudWatch?: null | #ClusterCloudWatch @go(CloudWatch,*ClusterCloudWatch)

	// +optional
	secretsEncryption?: null | #SecretsEncryption @go(SecretsEncryption,*SecretsEncryption)

	// future gitops plans, replacing the Git configuration above
	// +optional
	gitops?: null | #GitOps @go(GitOps,*GitOps)

	// Karpenter specific configuration options.
	// +optional
	karpenter?: null | #Karpenter @go(Karpenter,*Karpenter)

	// Outpost specifies the Outpost configuration.
	// +optional
	outpost?: null | #Outpost @go(Outpost,*Outpost)
}

// Outpost holds the Outpost configuration.
#Outpost: {
	// ControlPlaneOutpostARN specifies the Outpost ARN in which the control plane should be created.
	controlPlaneOutpostARN: string @go(ControlPlaneOutpostARN)

	// ControlPlaneInstanceType specifies the instance type to use for creating the control plane instances.
	controlPlaneInstanceType: string @go(ControlPlaneInstanceType)

	// ControlPlanePlacement specifies the placement configuration for control plane instances on Outposts.
	controlPlanePlacement?: null | #Placement @go(ControlPlanePlacement,*Placement)
}

// OutpostInfo describes the Outpost info.
#OutpostInfo: _

// Karpenter provides configuration options
#Karpenter: {
	// Version defines the Karpenter version to install
	// +required
	version: string @go(Version)

	// CreateServiceAccount create a service account or not.
	// +optional
	createServiceAccount?: null | bool @go(CreateServiceAccount,*bool)

	// DefaultInstanceProfile override the default IAM instance profile
	// +optional
	defaultInstanceProfile?: null | string @go(DefaultInstanceProfile,*string)
}

// ClusterConfigList is a list of ClusterConfigs
#ClusterConfigList: {
	TypeMeta: metav1.#TypeMeta
	metadata: metav1.#ListMeta @go(ListMeta)
	items: [...#ClusterConfig] @go(Items,[]ClusterConfig)
}

// NodeGroup holds configuration attributes that are
// specific to an unmanaged nodegroup
#NodeGroup: {
	NodeGroupBase?: null | #NodeGroupBase @go(,*NodeGroupBase)

	//+optional
	instancesDistribution?: null | #NodeGroupInstancesDistribution @go(InstancesDistribution,*NodeGroupInstancesDistribution)

	// +optional
	asgMetricsCollection?: [...#MetricsCollection] @go(ASGMetricsCollection,[]MetricsCollection)

	// CPUCredits configures [T3 Unlimited](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances-unlimited-mode.html), valid only for T-type instances
	// +optional
	cpuCredits?: null | string @go(CPUCredits,*string)

	// Associate load balancers with auto scaling group
	// +optional
	classicLoadBalancerNames?: [...string] @go(ClassicLoadBalancerNames,[]string)

	// Associate target group with auto scaling group
	// +optional
	targetGroupARNs?: [...string] @go(TargetGroupARNs,[]string)

	// Taints taints to apply to the nodegroup
	// +optional
	taints?: _#taintsWrapper @go(Taints)

	// UpdateConfig configures how to update NodeGroups.
	// +optional
	updateConfig?: null | #NodeGroupUpdateConfig @go(UpdateConfig,*NodeGroupUpdateConfig)

	// [Custom
	// address](/usage/vpc-networking/#custom-cluster-dns-address) used for DNS
	// lookups
	// +optional
	clusterDNS?: string @go(ClusterDNS)

	// [Customize `kubelet` config](/usage/customizing-the-kubelet/)
	// +optional
	kubeletExtraConfig?: null | #InlineDocument @go(KubeletExtraConfig,*InlineDocument)

	// ContainerRuntime defines the runtime (CRI) to use for containers on the node
	// +optional
	containerRuntime?: null | string @go(ContainerRuntime,*string)

	// MaxInstanceLifetime defines the maximum amount of time in seconds an instance stays alive.
	// +optional
	maxInstanceLifetime?: null | int @go(MaxInstanceLifetime,*int)

	// LocalZones specifies a list of local zones where the nodegroup should be launched.
	// The cluster should have been created with all of the local zones specified in this field.
	// +optional
	localZones?: [...string] @go(LocalZones,[]string)
}

// GitOps groups all configuration options related to enabling GitOps Toolkit on a
// cluster and linking it to a Git repository.
// Note: this will replace the older Git types
#GitOps: {
	// Flux holds options to enable Flux v2 on your cluster
	flux?: null | #Flux @go(Flux,*Flux)
}

// Flux groups all configuration options related to a Git repository used for
// GitOps Toolkit (Flux v2).
#Flux: {
	// The repository hosting service. Can be either Github or Gitlab.
	gitProvider?: string @go(GitProvider)

	// Flags is an arbitrary map of string to string to pass any flags to Flux bootstrap
	// via eksctl see https://fluxcd.io/docs/ for information on all flags
	flags?: #FluxFlags @go(Flags)
}

// FluxFlags is a map of string for passing arbitrary flags to Flux bootstrap
#FluxFlags: {[string]: string}

#NodeGroupSGs: {
	// AttachIDs attaches additional security groups to the nodegroup
	// +optional
	attachIDs?: [...string] @go(AttachIDs,[]string)

	// WithShared attach the security group
	// shared among all nodegroups in the cluster
	// Defaults to `true`
	// +optional
	withShared?: null | bool @go(WithShared,*bool)

	// WithLocal attach a security group
	// local to this nodegroup
	// Not supported for managed nodegroups
	// Defaults to `true`
	// +optional
	withLocal?: null | bool @go(WithLocal,*bool)
}

#NodeGroupIAM: {
	// AttachPolicy holds a policy document to attach
	// +optional
	attachPolicy?: #InlineDocument @go(AttachPolicy)

	// list of ARNs of the IAM policies to attach
	// +optional
	attachPolicyARNs?: [...string] @go(AttachPolicyARNs,[]string)

	// +optional
	instanceProfileARN?: string @go(InstanceProfileARN)

	// +optional
	instanceRoleARN?: string @go(InstanceRoleARN)

	// +optional
	instanceRoleName?: string @go(InstanceRoleName)

	// +optional
	instanceRolePermissionsBoundary?: string @go(InstanceRolePermissionsBoundary)

	// +optional
	withAddonPolicies?: #NodeGroupIAMAddonPolicies @go(WithAddonPolicies)
}

#NodeGroupIAMAddonPolicies: {
	// +optional
	// ImageBuilder allows for full ECR (Elastic Container Registry) access. This is useful for building, for
	// example, a CI server that needs to push images to ECR
	imageBuilder?: null | bool @go(ImageBuilder,*bool)

	// +optional
	// AutoScaler enables IAM policy for cluster-autoscaler
	autoScaler?: null | bool @go(AutoScaler,*bool)

	// +optional
	// ExternalDNS adds the external-dns project policies for Amazon Route 53
	externalDNS?: null | bool @go(ExternalDNS,*bool)

	// +optional
	// CertManager enables the ability to add records to Route 53 in order to solve the DNS01 challenge. More information can be found
	// [here](https://cert-manager.io/docs/configuration/acme/dns01/route53/#set-up-a-iam-role)
	certManager?: null | bool @go(CertManager,*bool)

	// +optional
	// AppMesh enables full access to AppMesh
	appMesh?: null | bool @go(AppMesh,*bool)

	// +optional
	// AppMeshPreview enables full access to AppMesh Preview
	appMeshPreview?: null | bool @go(AppMeshPreview,*bool)

	// +optional
	// EBS enables the new EBS CSI (Elastic Block Store Container Storage Interface) driver
	ebs?: null | bool @go(EBS,*bool)

	// +optional
	fsx?: null | bool @go(FSX,*bool)

	// +optional
	efs?: null | bool @go(EFS,*bool)

	// +optional
	awsLoadBalancerController?: null | bool @go(AWSLoadBalancerController,*bool)

	// +optional
	albIngress?: null | bool @go(DeprecatedALBIngress,*bool)

	// +optional
	xRay?: null | bool @go(XRay,*bool)

	// +optional
	cloudWatch?: null | bool @go(CloudWatch,*bool)
}

#NodeGroupSSH: {
	// +optional If Allow is true the SSH configuration provided is used, otherwise it is ignored. Only one of
	// PublicKeyPath, PublicKey and PublicKeyName can be configured
	allow?: null | bool @go(Allow,*bool)

	// +optional The path to the SSH public key to be added to the nodes SSH keychain. If Allow is true this value
	// defaults to "~/.ssh/id_rsa.pub", otherwise the value is ignored.
	publicKeyPath?: null | string @go(PublicKeyPath,*string)

	// +optional Public key to be added to the nodes SSH keychain. If Allow is false this value is ignored.
	publicKey?: null | string @go(PublicKey,*string)

	// +optional Public key name in EC2 to be added to the nodes SSH keychain. If Allow is false this value
	// is ignored.
	publicKeyName?: null | string @go(PublicKeyName,*string)

	// +optional
	sourceSecurityGroupIds?: [...string] @go(SourceSecurityGroupIDs,[]string)

	// Enables the ability to [SSH onto nodes using SSM](/introduction#ssh-access)
	// +optional
	enableSsm?: null | bool @go(EnableSSM,*bool)
}

#NodeGroupInstancesDistribution: {
	// +required
	instanceTypes?: [...string] @go(InstanceTypes,[]string)

	// Defaults to `on demand price`
	// +optional
	maxPrice?: null | float64 @go(MaxPrice,*float64)

	// Defaults to `0`
	// +optional
	onDemandBaseCapacity?: null | int @go(OnDemandBaseCapacity,*int)

	// Range [0-100]
	// Defaults to `100`
	// +optional
	onDemandPercentageAboveBaseCapacity?: null | int @go(OnDemandPercentageAboveBaseCapacity,*int)

	// Range [1-20]
	// Defaults to `2`
	// +optional
	spotInstancePools?: null | int @go(SpotInstancePools,*int)

	// +optional
	spotAllocationStrategy?: null | string @go(SpotAllocationStrategy,*string)

	// Enable [capacity
	// rebalancing](https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html)
	// for spot instances
	// +optional
	capacityRebalance: bool @go(CapacityRebalance)
}

#NodeGroupBottlerocket: {
	// +optional
	enableAdminContainer?: null | bool @go(EnableAdminContainer,*bool)

	// Settings contains any [bottlerocket
	// settings](https://github.com/bottlerocket-os/bottlerocket/#description-of-settings)
	// +optional
	settings?: null | #InlineDocument @go(Settings,*InlineDocument)
}

#NodeGroupUpdateConfig: {
	// MaxUnavailable sets the max number of nodes that can become unavailable
	// when updating a nodegroup (specified as number)
	// +optional
	maxUnavailable?: null | int @go(MaxUnavailable,*int)

	// MaxUnavailablePercentage sets the max number of nodes that can become unavailable
	// when updating a nodegroup (specified as percentage)
	// +optional
	maxUnavailablePercentage?: null | int @go(MaxUnavailablePercentage,*int)
}

// MetricsCollection used by the scaling config,
// see [cloudformation
// docs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html)
#MetricsCollection: {
	// +required
	granularity: string @go(Granularity)

	// +optional
	metrics?: [...string] @go(Metrics,[]string)
}

// ScalingConfig defines the scaling config
#ScalingConfig: {
	// +optional
	desiredCapacity?: null | int @go(DesiredCapacity,*int)

	// +optional
	minSize?: null | int @go(MinSize,*int)

	// +optional
	maxSize?: null | int @go(MaxSize,*int)
}

// NodePool represents a group of nodes that share the same configuration
// Ideally the NodeGroup type should be renamed to UnmanagedNodeGroup or SelfManagedNodeGroup and this interface
// should be called NodeGroup
#NodePool: _

// VolumeMapping Additional Volume Configurations
#VolumeMapping: {
	// +optional
	// VolumeSize gigabytes
	// Defaults to `80`
	volumeSize?: null | int @go(VolumeSize,*int)

	// Valid variants are `VolumeType` constants
	// +optional
	volumeType?: null | string @go(VolumeType,*string)

	// +optional
	volumeName?: null | string @go(VolumeName,*string)

	// +optional
	volumeEncrypted?: null | bool @go(VolumeEncrypted,*bool)

	// +optional
	volumeKmsKeyID?: null | string @go(VolumeKmsKeyID,*string)

	// +optional
	volumeIOPS?: null | int @go(VolumeIOPS,*int)

	// +optional
	volumeThroughput?: null | int @go(VolumeThroughput,*int)

	// +optional
	snapshotID?: null | string @go(SnapshotID,*string)
}

// NodeGroupBase represents the base nodegroup config for self-managed and managed nodegroups
#NodeGroupBase: {
	// +required
	name: string @go(Name)

	// Valid variants are `NodeAMIFamily` constants
	// +optional
	amiFamily?: string @go(AMIFamily)

	// +optional
	instanceType?: string @go(InstanceType)

	// Limit [nodes to specific
	// AZs](/usage/autoscaling/#zone-aware-auto-scaling)
	// +optional
	availabilityZones?: [...string] @go(AvailabilityZones,[]string)

	// Limit nodes to specific subnets
	// +optional
	subnets?: [...string] @go(Subnets,[]string)

	// +optional
	instancePrefix?: string @go(InstancePrefix)

	// +optional
	instanceName?: string @go(InstanceName)

	// +optional
	ScalingConfig?: null | #ScalingConfig @go(,*ScalingConfig)

	// +optional
	// VolumeSize gigabytes
	// Defaults to `80`
	volumeSize?: null | int @go(VolumeSize,*int)

	// +optional
	// SSH configures ssh access for this nodegroup
	ssh?: null | #NodeGroupSSH @go(SSH,*NodeGroupSSH)

	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// Enable [private
	// networking](/usage/vpc-networking/#use-private-subnets-for-initial-nodegroup)
	// for nodegroup
	// +optional
	privateNetworking: bool @go(PrivateNetworking)

	// Applied to the Autoscaling Group and to the EC2 instances (unmanaged),
	// Applied to the EKS Nodegroup resource and to the EC2 instances (managed)
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)

	// +optional
	iam?: null | #NodeGroupIAM @go(IAM,*NodeGroupIAM)

	// Specify [custom AMIs](/usage/custom-ami-support/), `auto-ssm`, `auto`, or `static`
	// +optional
	ami?: string @go(AMI)

	// +optional
	securityGroups?: null | #NodeGroupSGs @go(SecurityGroups,*NodeGroupSGs)

	// +optional
	maxPodsPerNode?: int @go(MaxPodsPerNode)

	// See [relevant AWS
	// docs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-rollingupdate-suspendprocesses)
	// +optional
	asgSuspendProcesses?: [...string] @go(ASGSuspendProcesses,[]string)

	// EBSOptimized enables [EBS
	// optimization](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)
	// +optional
	ebsOptimized?: null | bool @go(EBSOptimized,*bool)

	// Valid variants are `VolumeType` constants
	// +optional
	volumeType?: null | string @go(VolumeType,*string)

	// +optional
	volumeName?: null | string @go(VolumeName,*string)

	// +optional
	volumeEncrypted?: null | bool @go(VolumeEncrypted,*bool)

	// +optional
	volumeKmsKeyID?: null | string @go(VolumeKmsKeyID,*string)

	// +optional
	volumeIOPS?: null | int @go(VolumeIOPS,*int)

	// +optional
	volumeThroughput?: null | int @go(VolumeThroughput,*int)

	// Additional Volume Configurations
	// +optional
	additionalVolumes?: [...null | #VolumeMapping] @go(AdditionalVolumes,[]*VolumeMapping)

	// PreBootstrapCommands are executed before bootstrapping instances to the
	// cluster
	// +optional
	preBootstrapCommands?: [...string] @go(PreBootstrapCommands,[]string)

	// Override `eksctl`'s bootstrapping script
	// +optional
	overrideBootstrapCommand?: null | string @go(OverrideBootstrapCommand,*string)

	// Propagate all taints and labels to the ASG automatically.
	// +optional
	propagateASGTags?: null | bool @go(PropagateASGTags,*bool)

	// DisableIMDSv1 requires requests to the metadata service to use IMDSv2 tokens
	// Defaults to `false`
	// +optional
	disableIMDSv1?: null | bool @go(DisableIMDSv1,*bool)

	// DisablePodIMDS blocks all IMDS requests from non host networking pods
	// Defaults to `false`
	// +optional
	disablePodIMDS?: null | bool @go(DisablePodIMDS,*bool)

	// Placement specifies the placement group in which nodes should
	// be spawned
	// +optional
	placement?: null | #Placement @go(Placement,*Placement)

	// EFAEnabled creates the maximum allowed number of EFA-enabled network
	// cards on nodes in this group.
	// +optional
	efaEnabled?: null | bool @go(EFAEnabled,*bool)

	// InstanceSelector specifies options for EC2 instance selector
	instanceSelector?: null | #InstanceSelector @go(InstanceSelector,*InstanceSelector)

	// Bottlerocket specifies settings for Bottlerocket nodes
	// +optional
	bottlerocket?: null | #NodeGroupBottlerocket @go(Bottlerocket,*NodeGroupBottlerocket)

	// Enable EC2 detailed monitoring
	// +optional
	enableDetailedMonitoring?: null | bool @go(EnableDetailedMonitoring,*bool)

	// CapacityReservation defines reservation policy for a nodegroup
	capacityReservation?: null | #CapacityReservation @go(CapacityReservation,*CapacityReservation)

	// OutpostARN specifies the Outpost ARN in which the nodegroup should be created.
	// +optional
	outpostARN?: string @go(OutpostARN)
}

// CapacityReservation defines a nodegroup's Capacity Reservation targeting option
// +optional
#CapacityReservation: {
	// CapacityReservationPreference defines a nodegroup's Capacity Reservation preferences (either 'open' or 'none')
	capacityReservationPreference?: null | string @go(CapacityReservationPreference,*string)

	// CapacityReservationTarget defines a nodegroup's target Capacity Reservation or Capacity Reservation group (not both at the same time).
	capacityReservationTarget?: null | #CapacityReservationTarget @go(CapacityReservationTarget,*CapacityReservationTarget)
}

#CapacityReservationTarget: {
	capacityReservationID?:               null | string @go(CapacityReservationID,*string)
	capacityReservationResourceGroupARN?: null | string @go(CapacityReservationResourceGroupARN,*string)
}

// Placement specifies placement group information
#Placement: {
	groupName?: string @go(GroupName)
}

#LaunchTemplate: {
	// Launch template ID
	// +required
	id?: string @go(ID)

	// Launch template version
	// Defaults to the default launch template version
	// TODO support $Default, $Latest
	version?: null | string @go(Version,*string)
}

// NodeGroupTaint represents a Kubernetes taint
#NodeGroupTaint: {
	key?:    string              @go(Key)
	value?:  string              @go(Value)
	effect?: corev1.#TaintEffect @go(Effect)
}

// ManagedNodeGroup represents an EKS-managed nodegroup
// TODO Validate for unmapped fields and throw an error
#ManagedNodeGroup: {
	NodeGroupBase?: null | #NodeGroupBase @go(,*NodeGroupBase)

	// InstanceTypes specifies a list of instance types
	instanceTypes?: [...string] @go(InstanceTypes,[]string)

	// Spot creates a spot nodegroup
	spot?: bool @go(Spot)

	// Taints taints to apply to the nodegroup
	taints?: [...#NodeGroupTaint] @go(Taints,[]NodeGroupTaint)

	// UpdateConfig configures how to update NodeGroups.
	// +optional
	updateConfig?: null | #NodeGroupUpdateConfig @go(UpdateConfig,*NodeGroupUpdateConfig)

	// LaunchTemplate specifies an existing launch template to use
	// for the nodegroup
	launchTemplate?: null | #LaunchTemplate @go(LaunchTemplate,*LaunchTemplate)

	// ReleaseVersion the AMI version of the EKS optimized AMI to use
	releaseVersion: string @go(ReleaseVersion)
}

// InlineDocument holds any arbitrary JSON/YAML documents, such as extra config parameters or IAM policies
#InlineDocument: {...}

// FargateProfile defines the settings used to schedule workload onto Fargate.
#FargateProfile: {
	// Name of the Fargate profile.
	// +required
	name: string @go(Name)

	// PodExecutionRoleARN is the IAM role's ARN to use to run pods onto Fargate.
	podExecutionRoleARN?: string @go(PodExecutionRoleARN)

	// Selectors define the rules to select workload to schedule onto Fargate.
	selectors: [...#FargateProfileSelector] @go(Selectors,[]FargateProfileSelector)

	// Subnets which Fargate should use to do network placement of the selected workload.
	// If none provided, all subnets for the cluster will be used.
	// +optional
	subnets?: [...string] @go(Subnets,[]string)

	// Used to tag the AWS resources
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)

	// The current status of the Fargate profile.
	status: string @go(Status)
}

// FargateProfileSelector defines rules to select workload to schedule onto Fargate.
#FargateProfileSelector: {
	// Namespace is the Kubernetes namespace from which to select workload.
	// +required
	namespace: string @go(Namespace)

	// Labels are the Kubernetes label selectors to use to select workload.
	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)
}

// SecretsEncryption defines the configuration for KMS encryption provider
#SecretsEncryption: {
	// +required
	keyARN?: string @go(KeyARN)
}

// PrivateCluster defines the configuration for a fully-private cluster.
#PrivateCluster: {
	// Enabled enables creation of a fully-private cluster.
	enabled: bool @go(Enabled)

	// SkipEndpointCreation skips the creation process for endpoints completely. This is only used in case of an already
	// provided VPC and if the user decided to set it to true.
	skipEndpointCreation: bool @go(SkipEndpointCreation)

	// AdditionalEndpointServices specifies additional endpoint services that
	// must be enabled for private access.
	// Valid entries are "cloudformation", "autoscaling" and "logs".
	additionalEndpointServices?: [...string] @go(AdditionalEndpointServices,[]string)
}

// InstanceSelector holds EC2 instance selector options
#InstanceSelector: {
	// VCPUs specifies the number of vCPUs
	vCPUs?: int @go(VCPUs)

	// Memory specifies the memory
	// The unit defaults to GiB
	memory?: string @go(Memory)

	// GPUs specifies the number of GPUs.
	// It can be set to 0 to select non-GPU instance types.
	gpus?: null | int @go(GPUs,*int)

	// CPU Architecture of the EC2 instance type.
	// Valid variants are:
	// `"x86_64"`
	// `"amd64"`
	// `"arm64"`
	cpuArchitecture?: string @go(CPUArchitecture)
}

// taintsWrapper handles unmarshalling both map[string]string and []NodeGroupTaint
_#taintsWrapper: _

// UnsupportedFeatureError is an error that represents an unsupported feature
// +k8s:deepcopy-gen=false
#UnsupportedFeatureError: {
	Message: string
	Err:     _ @go(,error)
}

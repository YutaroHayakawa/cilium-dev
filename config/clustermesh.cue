import (
	"github.com/YutaroHayakawa/cilium-dev/pkg/k8s"
	"github.com/YutaroHayakawa/cilium-dev/pkg/cilium"
)

// Basic 2 cluster mesh

#ClusterTemplate: k8s.#KindCluster & {
	nodes: [
		{ role: "control-plane" },
		{ role: "worker" },
	]
}

Clusters: [...k8s.#KindCluster] & [
	#ClusterTemplate & {#In: {clusterID: 1}},
	#ClusterTemplate & {#In: {clusterID: 2}},
]

#ValueTemplate: cilium.#CiliumHelmValues & {
	ipam: mode: "kubernetes"
}

Values: [...cilium.#CiliumHelmValues] & [
	#ValueTemplate & {#In: {cluster: Clusters[0].#Out.cluster}},
	#ValueTemplate & {#In: {cluster: Clusters[1].#Out.cluster}},
]

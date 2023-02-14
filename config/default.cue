import (
	"github.com/YutaroHayakawa/cilium-dev/pkg/k8s"
	"github.com/YutaroHayakawa/cilium-dev/pkg/cilium"
)

Clusters: [...k8s.#KindCluster] & [
	k8s.#KindCluster & {#In: {clusterID: 1}},
]

Values: [...cilium.#CiliumHelmValues] & [
	cilium.#CiliumHelmValues & {
		#In: {cluster: Clusters[0].#Out.cluster}
		ipam: {mode: "kubernetes"}
	},
]

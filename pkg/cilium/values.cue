package cilium

import (
	corev1 "k8s.io/api/core/v1"
	k8spkg "github.com/YutaroHayakawa/cilium-dev/pkg/k8s"
)

#TunnelMode:             "disabled" | "vxlan" | "geneve"
#MonitorAggregationMode: "none" | "low" | "medium" | "maximum"
#IPAMMode:               "cluster-pool" | "cluster-pool-v2" | "kubernetes" | "azure" | "eni" | "crd"
#KPRMode:                "disabled" | "partial" | "strict"

#CiliumHelmValues: {
	#In: {
		cluster: k8spkg.#K8sCluster
	}

	tunnel: #TunnelMode | *"vxlan"
	ipv4: {enabled: #In.cluster.ipv4}
	ipv6: {enabled: #In.cluster.ipv6}

	autoDirectNodeRoutes: bool | *false

	if tunnel == "disabled" {
		autoDirectNodeRoutes: true

		if #In.cluster.ipv4 {
			ipv4NativeRoutingCIDR: #In.cluster.podSubnetIPv4
		}

		if #In.cluster.ipv6 {
			ipv6NativeRoutingCIDR: #In.cluster.podSubnetIPv6
		}
	}

	cluster: {
		name: #In.cluster.clusterName
		id:   #In.cluster.clusterID
	}

	image?: {
		repository: string | *"quay.io/cilium/cilium-ci"
		tag:        string | *"latest"
		useDigest:  bool | *false
		pullPolicy: corev1.#PullPolicy | *"Always"
	}

	operator: {
		image?: {
			repository: string | *"quay.io/cilium/operator"
			tag:        string | *"latest"
			useDigest:  bool | *false
			pullPolicy: corev1.#PullPolicy | *"Always"
			suffix:     string | *"-ci"
		}
	}

	clustermesh: {
		useAPIServer: bool | *false
		if useAPIServer {
			apiserver: {
				image?: {
					repository: string | *"quay.io/cilium/clustermesh-apiserver-ci"
					tag:        string | *"latest"
					useDigest:  bool | *false
					pullPolicy: corev1.#PullPolicy | *"Always"
				}
			}
		}
	}

	hubble: {
		relay: {
			image: {
				repository: string | *"quay.io/cilium/hubble-relay-ci"
				tag: string | *"latest"
				digest: string | *""
				useDigest: bool | *false
				pullPolicy: corev1.#PullPolicy | *"Always"
			}
		}
	}

	bpf: {
		monitorAggregation: #MonitorAggregationMode | *"none"
	}

	socketLB: {
		enabled: bool | *false
		if enabled {
			hostNamespaceOnly: bool | *false
		}
	}

	ipam: {
		mode: #IPAMMode | *"kubernetes"
	}

	k8s: {
		requireIPv4PodCIDR: bool | *false
		requireIPv6PodCIDR: bool | *false
		if ipam.mode == "kubernetes" {
			if ipv4.enabled {
				requireIPv4PodCIDR: true
			}
			if ipv6.enabled {
				requireIPv6PodCIDR: true
			}
		}
	}

	kubeProxyReplacement: #KPRMode | *"disabled"

	if #In.cluster.kubeProxyMode == "none" {
		kubeProxyReplacement: "strict"
	}
}

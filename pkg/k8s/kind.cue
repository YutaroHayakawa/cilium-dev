package k8s

import (
	"sigs.k8s.io/kind/pkg/apis/config/v1alpha4"
)

#KindCluster: v1alpha4.#Cluster & {
	#In: {
		ipv4:          bool | *true
		ipv6:          bool | *false
		clusterID:     uint32 | *0
		kubeProxyMode: string | *"iptables"
	}

	#Out: {
		cluster: #K8sCluster & {
			contextName: "kind-\(name)"
			clusterName: name
			clusterID:   #In.clusterID
			ipv4:        #In.ipv4
			ipv6:        #In.ipv6
			if ipv4 {
				podSubnetIPv4:     networking.#podSubnetIPv4
				serviceSubnetIPv4: networking.#serviceSubnetIPv4
			}
			if ipv6 {
				podSubnetIPv6:     networking.#podSubnetIPv6
				serviceSubnetIPv6: networking.#serviceSubnetIPv6
			}
		}
	}

	kind:       "Cluster"
	apiVersion: "kind.x-k8s.io/v1alpha4"
	name:       "cluster\(#In.clusterID)"
	networking: {
		disableDefaultCNI: true

		ipFamily: v1alpha4.#ClusterIPFamily

		if #In.ipv4 && #In.ipv6 {
			ipFamily:           "dual"
			#podSubnetIPv4:     "10.\(#In.clusterID).0.0/16"
			#serviceSubnetIPv4: "192.168.\(#In.clusterID).0/24"
			#podSubnetIPv6:     "fd00:0:\(#In.clusterID)::/64"
			#serviceSubnetIPv6: "fd00:1:\(#In.clusterID)::/108"
			podSubnet:          "\(#podSubnetIPv4),\(#podSubnetIPv6)"
			serviceSubnet:      "\(#serviceSubnetIPv4),\(#serviceSubnetIPv6)"
		}

		if #In.ipv4 && !#In.ipv6 {
			ipFamily:           "ipv4"
			#podSubnetIPv4:     "10.\(#In.clusterID).0.0/16"
			#serviceSubnetIPv4: "192.168.\(#In.clusterID).0/24"
			podSubnet:          #podSubnetIPv4
			serviceSubnet:      #serviceSubnetIPv4
		}

		if !#In.ipv4 && #In.ipv6 {
			ipFamily:           "ipv6"
			#podSubnetIPv6:     "fd00:0:\(#In.clusterID)::/64"
			#serviceSubnetIPv6: "fd00:1:\(#In.clusterID)::/108"
			podSubnet:          #podSubnetIPv6
			serviceSubnet:      #serviceSubnetIPv6
		}

		kubeProxyMode: #In.kubeProxyMode
	}
}

package k8s

// Abstract representation of the k8s cluster information.
// Each k8s cluster configuration exports this structure
// with #Out field. So that it can be consumed by other 
// configurations (e.g. Helm).
#K8sCluster: {
	contextName:       string
	clusterName:       string
	clusterID:         uint32
	ipv4:              bool
	ipv6:              bool
	podSubnetIPv4:     string | *""
	serviceSubnetIPv4: string | *""
	podSubnetIPv6:     string | *""
	serviceSubnetIPv6: string | *""
	kubeProxyMode:     string | *""
}

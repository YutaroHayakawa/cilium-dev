// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/weaveworks/eksctl/pkg/apis/eksctl.io/v1alpha5

package v1alpha5

// EndpointService represents a VPC endpoint service.
#EndpointService: {
	// Name is the name of the endpoint service.
	Name: string

	// Optional specifies whether the service is optional.
	Optional: bool

	// OutpostsOnly specifies whether the endpoint is required only for Outposts clusters.
	OutpostsOnly: bool

	// RequiresChinaPrefix is true if the endpoint service requires a prefix for China regions.
	RequiresChinaPrefix: bool
}

// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/aws-sdk-go-v2/service/eks/types

package types

// You don't have permissions to perform the requested operation. The user or role
// that is making the request must have at least one IAM permissions policy
// attached that grants the required permissions. For more information, see Access
// Management (https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the
// IAM User Guide.
#AccessDeniedException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
}

// This exception is thrown if the request contains a semantic error. The precise
// meaning will depend on the API, and will be documented in the error message.
#BadRequestException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
}

// These errors are usually caused by a client action. Actions can include using an
// action or resource on behalf of a user that doesn't have permissions to use the
// action or resource or specifying an identifier that is not valid.
#ClientException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
	AddonName?:         null | string @go(,*string)
}

// The specified parameter is invalid. Review the available parameters for the API
// request.
#InvalidParameterException: {
	Message?:            null | string @go(,*string)
	ErrorCodeOverride?:  null | string @go(,*string)
	ClusterName?:        null | string @go(,*string)
	NodegroupName?:      null | string @go(,*string)
	FargateProfileName?: null | string @go(,*string)
	AddonName?:          null | string @go(,*string)
}

// The request is invalid given the state of the cluster. Check the state of the
// cluster and the associated operations.
#InvalidRequestException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
	AddonName?:         null | string @go(,*string)
}

// A service resource associated with the request could not be found. Clients
// should not retry such requests.
#NotFoundException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
}

// The specified resource is in use.
#ResourceInUseException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
	AddonName?:         null | string @go(,*string)
}

// You have encountered a service limit on the specified resource.
#ResourceLimitExceededException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
}

// The specified resource could not be found. You can view your available clusters
// with ListClusters. You can view your available managed node groups with
// ListNodegroups. Amazon EKS clusters and node groups are Region-specific.
#ResourceNotFoundException: {
	Message?:            null | string @go(,*string)
	ErrorCodeOverride?:  null | string @go(,*string)
	ClusterName?:        null | string @go(,*string)
	NodegroupName?:      null | string @go(,*string)
	FargateProfileName?: null | string @go(,*string)
	AddonName?:          null | string @go(,*string)
}

// Required resources (such as service-linked roles) were created and are still
// propagating. Retry later.
#ResourcePropagationDelayException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
}

// These errors are usually caused by a server-side issue.
#ServerException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
	AddonName?:         null | string @go(,*string)
}

// The service is unavailable. Back off and retry the operation.
#ServiceUnavailableException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
}

// At least one of your specified cluster subnets is in an Availability Zone that
// does not support Amazon EKS. The exception output specifies the supported
// Availability Zones for your account, from which you can choose subnets for your
// cluster.
#UnsupportedAvailabilityZoneException: {
	Message?:           null | string @go(,*string)
	ErrorCodeOverride?: null | string @go(,*string)
	ClusterName?:       null | string @go(,*string)
	NodegroupName?:     null | string @go(,*string)
	ValidZones: [...string] @go(,[]string)
}

// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/weaveworks/eksctl/pkg/apis/eksctl.io/v1alpha5

package v1alpha5

#MinThroughput: 125
#MaxThroughput: 1000
#MinIO1Iops:    100
#MaxIO1Iops:    64000
#MinGP3Iops:    3000
#MaxGP3Iops:    16000
#OneDay:        86400

// NOTE: we don't use k8s.io/apimachinery/pkg/util/sets here to keep API package free of dependencies
_#nameSet: {[string]: {
}}

#ReservedProfileNamePrefix: "eks-"

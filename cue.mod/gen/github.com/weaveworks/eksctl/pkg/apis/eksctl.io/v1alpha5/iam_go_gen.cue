// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/weaveworks/eksctl/pkg/apis/eksctl.io/v1alpha5

package v1alpha5

#AnnotationEKSRoleARN: "eks.amazonaws.com/role-arn"

// ClusterIAM holds all IAM attributes of a cluster
#ClusterIAM: {
	// +optional
	serviceRoleARN?: null | string @go(ServiceRoleARN,*string)

	// permissions boundary for all identity-based entities created by eksctl.
	// See [AWS Permission Boundary](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
	// +optional
	serviceRolePermissionsBoundary?: null | string @go(ServiceRolePermissionsBoundary,*string)

	// role used by pods to access AWS APIs. This role is added to the Kubernetes RBAC for authorization.
	// See [Pod Execution Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)
	// +optional
	fargatePodExecutionRoleARN?: null | string @go(FargatePodExecutionRoleARN,*string)

	// permissions boundary for the fargate pod execution role`. See [EKS Fargate Support](/usage/fargate-support/)
	// +optional
	fargatePodExecutionRolePermissionsBoundary?: null | string @go(FargatePodExecutionRolePermissionsBoundary,*string)

	// enables the IAM OIDC provider as well as IRSA for the Amazon CNI plugin
	// +optional
	withOIDC?: null | bool @go(WithOIDC,*bool)

	// service accounts to create in the cluster.
	// See [IAM Service Accounts](/usage/iamserviceaccounts/#usage-with-config-files)
	// +optional
	serviceAccounts?: [...null | #ClusterIAMServiceAccount] @go(ServiceAccounts,[]*ClusterIAMServiceAccount)

	// VPCResourceControllerPolicy attaches the IAM policy
	// necessary to run the VPC controller in the control plane
	// Defaults to `true`
	vpcResourceControllerPolicy?: null | bool @go(VPCResourceControllerPolicy,*bool)
}

// ClusterIAMMeta holds information we can use to create ObjectMeta for service
// accounts
#ClusterIAMMeta: {
	// +optional
	name?: string @go(Name)

	// +optional
	namespace?: string @go(Namespace)

	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// +optional
	annotations?: {[string]: string} @go(Annotations,map[string]string)
}

// ClusterIAMServiceAccount holds an IAM service account metadata and configuration
#ClusterIAMServiceAccount: {
	metadata?: #ClusterIAMMeta @go(ClusterIAMMeta)

	// list of ARNs of the IAM policies to attach
	// +optional
	attachPolicyARNs?: [...string] @go(AttachPolicyARNs,[]string)
	wellKnownPolicies?: #WellKnownPolicies @go(WellKnownPolicies)

	// AttachPolicy holds a policy document to attach to this service account
	// +optional
	attachPolicy?: #InlineDocument @go(AttachPolicy)

	// ARN of the role to attach to the service account
	attachRoleARN?: string @go(AttachRoleARN)

	// ARN of the permissions boundary to associate with the service account
	// +optional
	permissionsBoundary?: string @go(PermissionsBoundary)

	// +optional
	status?: null | #ClusterIAMServiceAccountStatus @go(Status,*ClusterIAMServiceAccountStatus)

	// Specific role name instead of the Cloudformation-generated role name
	// +optional
	roleName?: string @go(RoleName)

	// Specify if only the IAM Service Account role should be created without creating/annotating the service account
	// +optional
	roleOnly?: null | bool @go(RoleOnly,*bool)

	// AWS tags for the service account
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// ClusterIAMServiceAccountStatus holds status of the IAM service account
#ClusterIAMServiceAccountStatus: {
	// +optional
	roleARN?: null | string @go(RoleARN,*string)
}

// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/weaveworks/eksctl/pkg/apis/eksctl.io/v1alpha5

package v1alpha5

#IdentityProviderType: string // #enumIdentityProviderType

#enumIdentityProviderType:
	#OIDCIdentityProviderType

#OIDCIdentityProviderType: #IdentityProviderType & "oidc"

// IdentityProviderInterface is a dummy interface
// to give some extra type safety
#IdentityProviderInterface: _

// IdentityProvider holds an identity provider configuration.
// See [the example eksctl config](https://github.com/weaveworks/eksctl/blob/main/examples/27-oidc-provider.yaml).
// Schema type is one of `OIDCIdentityProvider`
#IdentityProvider: _

// OIDCIdentityProvider holds the spec of an OIDC provider
// to use for EKS authzn
#OIDCIdentityProvider: {
	// +required
	name?: string @go(Name)

	// +required
	issuerURL?: string @go(IssuerURL)

	// +required
	clientID?:       string @go(ClientID)
	usernameClaim?:  string @go(UsernameClaim)
	usernamePrefix?: string @go(UsernamePrefix)
	groupsClaim?:    string @go(GroupsClaim)
	groupsPrefix?:   string @go(GroupsPrefix)
	requiredClaims?: {[string]: string} @go(RequiredClaims,map[string]string)
	tags?: {[string]: string} @go(Tags,map[string]string)
}

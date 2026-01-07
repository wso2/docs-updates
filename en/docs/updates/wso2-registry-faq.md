# FAQ

Common questions about working with the WSO2 Container Registry.

## Q: I just purchased a new WSO2 product subscription. Why am I unable to pull images?

Existing tokens do not auto-sync new product entitlements. Re-sync products from Support Portal > Registry Tokens by selecting the refresh action for the token.

## Q: I lost my Token Secret. Can I recover it?

Secrets cannot be recovered. Re-generate the secret for the token; the previous secret is invalidated immediately, so update all pipelines that use it.

## Q: How do I remove access for an old server or employee?

Delete the token from Support Portal > Registry Tokens to revoke access.

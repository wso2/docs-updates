# Customer Guide for Harbor Registry

Use this guide to publish and consume WSO2 product images updated via the Update Tool in your own Harbor registry.

## Prerequisites

- Active WSO2 Subscription and access to product distributions.
- A Harbor project with permission to push images (robot account or user credentials).
- Docker or Podman installed on the workstation that builds images.
- Network access from builders and runtime nodes to the Harbor endpoint.
- A product pack prepared with the required update level or hotfixes.

!!! Tip
    If you are new to updates, follow the steps in [Set Up the Update Tool](set-up-update-tool.md) and
    [Useful Update Commands](update-commands.md) to prepare your pack before building images.

## Prepare an updated product pack

1. Download the desired product distribution.
2. Run the Update Tool from the `<product-home>/bin` directory to apply updates or hotfixes.
3. Verify the update level with `./wso2update status` and keep the pack ready for image building.

## Build an image for Harbor

1. Create a build context that includes the updated pack and any deployment-specific files (configs, JDBC drivers,
   TLS material, etc.).
2. Use a simple Dockerfile that copies the pack and sets the entrypoint. Example:

    ```dockerfile
    FROM eclipse-temurin:11-jre
    ARG PACK=wso2am-4.2.0
    COPY ${PACK}/ /home/wso2/${PACK}/
    WORKDIR /home/wso2/${PACK}
    EXPOSE 9443 8243
    ENTRYPOINT ["./bin/wso2server.sh"]
    ```

3. Build the image locally with a tag that captures the product version and update level. Example:

    ```bash
    docker build -t wso2am:4.2.0.20 .
    ```

## Tag and push to Harbor

1. Log in to Harbor from the CLI:

    ```bash
    docker login harbor.example.com
    ```

2. Tag the image for your Harbor project:

    ```bash
    docker tag wso2am:4.2.0.20 harbor.example.com/projects/wso2/wso2am:4.2.0.20
    ```

3. Push the image:

    ```bash
    docker push harbor.example.com/projects/wso2/wso2am:4.2.0.20
    ```

4. Optionally add a rolling tag (for example, `latest` or an environment-specific tag) and push it after the immutable
   version tag so that automated deployments always have a stable fallback.

## Pull and deploy from Harbor

- Configure your runtime environment (Kubernetes, Docker Compose, or VM-based scripts) to pull from Harbor using the
  versioned tag you pushed.
- If the registry requires authentication, create the appropriate image pull secret or credential helper entry.
- Keep the Harbor project vulnerability scanner enabled and enforce a blocking policy for critical issues where
  possible.

## Recommended practices

- **Immutable tags first:** Always push and deploy with immutable tags (for example, `4.2.0.20`) before updating any
  rolling tags. This simplifies rollbacks.
- **Document update levels:** Record which update level was applied to each image and map it to the change ticket or
  release note for traceability.
- **Promote across environments:** Use Harbor replication or project-level promotion rules to move images from
  non-production to production projects after validation.
- **Automate builds:** Integrate the update and build steps into your CI pipeline so Harbor is the single source for
  images consumed by all environments.
- **Cleanup:** Apply tag retention rules in Harbor to keep only the latest N immutable tags per product version to
  manage storage.

## Working with the WSO2 Container Registry

Use the WSO2 Container Registry (registry.wso2.com) to browse and pull product images that your subscription entitles
you to. You can access it via the web portal or the CLI.

- **Web portal:** Browse projects, repositories, and tags with your WSO2 account credentials.
- **CLI:** Pull images for Docker, Kubernetes, or CI/CD using user or service tokens created in the WSO2 Support
  Portal.

### Access the web portal

1. Open registry.wso2.com and sign in with your WSO2 account credentials (same as the Support Portal).

!!! warning "Note"
  If you are already signed in to your WSO2 account, the session authenticates you automatically. Token-based
  credentials generated from the Support Portal are not valid for web portal login.

2. After login, the dashboard lists projects filtered by your active product subscriptions (for example, `wso2-apim`,
   `wso2-is`).
3. Select a project to view its repositories, then open a repository to see the available tags. Screenshots are
   omitted; follow the UI labels for Dashboard, Projects, Repositories, and Tags.
4. To search for a specific artifact, use the search bar, set Type to Tags, and enter the product/tag (for example,
   `4.2.0-rocky`).
5. To copy a pull command, open the repository, pick the tag (for example, `latest` or `4.2.0.15`), click the artifact
   SHA, then copy the pull command (for example, `docker pull registry.wso2.com/wso2-apim/am:latest`).

### Access images via CLI

CLI access uses user or service tokens generated in the WSO2 Support Portal.

1. In the WSO2 Support Portal, go to Projects > My Projects > Registry Tokens and select **Generate Token**. Provide a
   descriptive name (for example, `Jenkins-Pipeline-Token`). Copy the token name and token secret immediately; the
   secret is shown only once.
2. Log in from your container client using the token name as the username and the token secret as the password:

    ```bash
    docker login registry.wso2.com -u <TOKEN_NAME> -p <TOKEN_SECRET>
    ```

### FAQ

- **New subscription not visible when pulling images?** Existing tokens do not auto-sync new product entitlements.
  Re-sync products from Support Portal > Registry Tokens by selecting the refresh action for the token.
- **Lost token secret?** Secrets cannot be recovered. Re-generate the secret for the token; the previous secret is
  invalidated immediately, so update all pipelines that use it.
- **Remove access for old servers or users?** Delete the token from Support Portal > Registry Tokens to revoke access.

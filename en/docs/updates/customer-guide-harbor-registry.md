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

# Build your own Choreo Labs product Docker images

This guide is for users who want to build their own Docker images of Choreo Labs products using Choreo Labs provided product binaries.

Choreo Labs provides product binary packages and corresponding Dockerfiles for product versions. These binaries are provided through the Choreo Labs registry which is the same registry used to provide the docker images. The Dockerfiles download a binary package and assemble the product's component images from it. You do not need to compile the product source code. Depending on the component, the build also installs operating system packages and runtime dependencies.

> **Note:** These binaries are provided solely for creating Docker images. They are not intended as standalone installations on virtual machines or physical hosts. Use the product's documented installation and deployment options instead.

This documentation covers obtaining binaries and building images. For instructions on configuring and deploying the resulting images, use the relevant product documentation.

## Supported products

Binary distributions and dockerfiles are provided for the following Choreo Labs product versions at the moment.

| Product | Versions |
| --- | --- |
| API Platform Gateway | 1.2.0 |
| API Platform API Portal & MCP Hub | 1.0.0 |
| API Manager (APIM) | 4.7.0, 4.6.0 |
| Identity Server (IS) | 7.3.0, 7.2.0, 7.1.0, 7.0.0|

We are initially introducing this approach for the products and versions listed above. Support for additional products and versions will be introduced progressively as we extend this distribution model across the Choreo Labs product portfolio. If you need the binary distribution for any other product versions, please reach out to us via the customer portal

## Before you begin

Make sure you have the following pre-requisites.

- Docker with BuildKit enabled to build the images.
- Docker Buildx if you need multi-architecture builds.
- Git to obtain the product Dockerfiles.
- An OCI artifact client such as ORAS to download the binary package.
- A registry token with read access to the product binary repository.
- A confirmed available product update version and its matching Dockerfiles.
- Network access to the binary registry when downloading, and to base image and dependency repositories when building.

## 1. Install an OCI client

The registry stores binary packages as OCI artifacts. Use a client that can download artifact files, such as ORAS CLI. Use `oras pull` to retrieve the binary ZIP as a local file.
Install ORAS using the instructions for your operating system, then check that it is available:

```bash
oras version
```

## 2. Authenticate to the binary registry

Retrieve a registry token through the CSM portal, following Registry Token Management. Use the token name as the username and the token secret as the password.

```bash
export REGISTRY_USERNAME='<token-name>'
export REGISTRY_PASSWORD='<token-secret>'
```

Log in to the registry:

```bash
printf '%s' "$REGISTRY_PASSWORD" | oras login registry.wso2.com \
  --username "$REGISTRY_USERNAME" --password-stdin
```

This login allows ORAS to read the binary repository. These credentials are used for the download, not passed to the Docker build.

## 3. Pull the binary package from the registry

Select the appropriate registry project for your product and identify the full binary repository path. Binary packages are hosted in the registry using the following structure:

```text
registry.wso2.com/<project>/binaries/<product>
```

Ensure that you use the correct project name and product repository path when downloading the binary package using ORAS.

| Product | Registry project |
| --- | --- |
| WSO2 API Platform | [wso2-api-platform](https://registry.wso2.com/harbor/projects/71/repositories) |
| WSO2 API Manager | [wso2-apim](https://registry.wso2.com/harbor/projects/3/repositories) |
| WSO2 Identity Server | [wso2-is](https://registry.wso2.com/harbor/projects/7/repositories) |

For example, the binary repository for the API Gateway is `registry.wso2.com/wso2-api-platform/binaries/api-gateway`.
Choose the full binary repository reference and a confirmed available version tag. Set an output directory where ORAS will save the downloaded package.
Download the binary package using ORAS by specifying the full binary repository path, product version, and output directory.

```bash
oras pull "<binary-repository>:<product-version>" \
  --output "<binary-storage-directory>"
```

For example, to download an API Gateway binary package:

```bash
oras pull \
  "registry.wso2.com/wso2-api-platform/binaries/api-gateway:1.2.0.14" \
  --output "/absolute/path/to/binaries"
```

Replace the product version with a confirmed available version and the output directory with your preferred local path.
ORAS saves the downloaded files to the specified directory. You can then use the downloaded ZIP package to build your Docker image.

## 4. Obtain the product Dockerfiles

Choose the repository in the following table and follow its README.

| Product | Dockerfiles and build instructions |
| --- | --- |
| API Platform Gateway | [API Gateway Dockerfiles](https://github.com/wso2/api-platform/tree/main/docker/api-gateway) |
| API Platform API Portal & MCP Hub | [API Portal Dockerfiles](https://github.com/wso2/api-platform/tree/main/docker/api-portal) |
| API Manager (APIM) | [API Manager Dockerfiles](https://github.com/wso2/docker-apim) |
| Identity Server (IS) | [Identity Server Dockerfiles](https://github.com/wso2/docker-is) |

Use Dockerfiles matching the product release and record the repository revision used for the build. For API Manager and Identity Server, use the version-specific instructions in their linked repositories.

## Changing the base image

Read the product README before changing its base image. The replacement base must provide compatible libraries, runtime dependencies, and the commands used by the Dockerfile. Preserve the working directory, user permissions, writable paths, ports, health checks, configuration paths, and entrypoint. Validate your custom images using the product's testing and deployment guidance.

## Retention and keeping your own copy

Refer to the [Choreo Labs registry image retention policy](https://updates.docs.choreolabs.com/en/latest/updates/choreo-labs-registry-image-retention-policy/).

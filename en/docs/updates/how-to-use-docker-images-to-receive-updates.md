
Follow the steps given below to receive WSO2 Updates using Docker images.<br>
  1. All Docker images in the [WSO2 Private Docker registry](https://docker.wso2.com/) adhere to a special image tagging format. Read more on  [Docker versioning tags](../../updates/using-wso2-docker-images/).<br>
  2. Then decide on the correct Docker image tag(s).<br>
  3. Run all the security and compliance test(s) on the selected Docker image. After verifying, add the same to your own private Docker registry.<br>
  4. Rollout the Docker image into a lower environment and test well.<br>
  5. Use this image in other deployments as required.<br>

!!! Note
    <ins>Docker Image Release Frequency</ins> : Docker images with updates are <strong>released weekly</strong> to the [WSO2 Private Docker registry](https://docker.wso2.com/). Therefore, you will not find continuous update-level tags in the docker images added in the WSO2 Docker registry.  Furthermore, the registry retains only the latest Docker images, with older images being periodically removed.

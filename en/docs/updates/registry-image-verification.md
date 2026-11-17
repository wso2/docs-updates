# Registry Image Verification

## Introduction

To ensure the security and authenticity of your deployments, Choreo Labs provides signed container images. This section explains how to use the Cosign tool to verify that an image has not been tampered with and was officially released by Choreo Labs.

## Prerequisites

Before verification, ensure:

* [Cosign](https://docs.sigstore.dev/cosign/system_config/installation/) is installed
* Access to the [Choreo Labs container registry](https://registry.choreolabs.com)
* Public key provided by Choreo Labs

You need the Choreo Labs public key to validate the signatures. Save the following block into a file named **choreolabs-public-key.pub** on your local machine:

```shell
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw4rovhfVQqdUeXvtxxAl
3OKdNLNaUqiAlnb3zBxv7ITYCJXhXLByUk5wuKca6fr00d3NqwXoUeVARdrKMz5y
6a0QTLmM8CmD+l/ffGRqrNel23cdHkIi3wZFAJToHy+mFB6tYUoL6ieuEtLT+bFn
msBkucHBPp6ahicCVPfegiTWjSwBylnYSOPa9D/VmvQV13ROfuq1EgeejbCpepbc
9APj3pXjpFtOPWPBBYdofumqYj2sKR2y/V4yYl8mrEJon6SX3hBi5d0RXGNaFzdU
6D9rm4K6ZEEYX+l2uT+sHorTtI4e08KVOK7lU0VY4fiR+5Mh3FFKeLvF8KNMSYOZ
gQIDAQAB
-----END PUBLIC KEY-----
```

## Verify Your Image

### Run the Verification Command

The command you run depends on whether you are logged in to the Choreo Labs container registry. Use the following command structure to verify your image. Replace `<image_path>` with the full registry path of the Choreo Labs image (e.g., `registry.choreolabs.com/wso2-am/am:v1.0.0`).

### A. If Already Logged In (Docker/OCI Client)

Verify the image directly:

```shell
cosign verify --key /path/to/choreolabs-public-key.pub <image_path>
```

### B. If Not Logged In

Pass credentials securely using environment variables:

1. Set credentials:

    ```shell
    export REGISTRY_USERNAME=<username>
    export REGISTRY_PASSWORD=<password>
    ```

2. Verify the image:

    ```shell
    cosign verify \
      --registry-username="$REGISTRY_USERNAME" \
      --registry-password="$REGISTRY_PASSWORD" \
      --key /path/to/choreolabs-public-key.pub \
      <image_path>
    ```

## Understanding the Results

When you run the command, a successful verification will display a message confirming that the **Cosign claims were validated** and the **signatures were verified** against the public key. If the verification fails, do not deploy the image and contact Choreo Labs support.

A successful verification confirms:

* Signature is valid
* Image digest matches signed content

![Registry Image Verification Preview](../assets/img/updates/registry-image-verification-preview.jpg)

### Creating Custom Docker images for Updated Products
The `create-docker` command builds a Docker image of an updated product pack using the Docker resources developed by WSO2. However, the following steps should be followed if any customizations are required.

In this example, we will assume that we are creating a custom Docker image for an updated product of WSO2 API Manager 3.0.0<br>
    1. Go to the product Docker resources repository on GitHub (e.g., [docker-apim](https://github.com/wso2/docker-apim/)).<br>
    2. Find the latest tag corresponding to the product version (e.g., v3.0.0.x)<br>

<img src="../../assets/img/updates/choose-new-product-tag.png" width="700">
<br>
    3. Create a Docker project directory and navigate into it.

    mkdir -p <PROJECT>/docker 
    cd <PROJECT>/docker
<br>
    4. Navigate to the Docker resources of the required Operating System, and download the <strong>Dockerfile</strong>, and <strong>docker-entrypoint.sh</strong>> files into the project directory.
    
    wget https://raw.githubusercontent.com/wso2/docker-apim/v3.0.0.4/dockerfiles/alpine/apim/Dockerfile<br>
    wget https://raw.githubusercontent.com/wso2/docker-apim/v3.0.0.4/dockerfiles/alpine/apim/docker-entrypoint.sh 
<br>
    5. Create a zip file of the updated product pack and copy it into the Docker project directory.

    zip -qr wso2am-3.0.0.zip <path/to/product/wso2am-3.0.0>
    cp wso2am-3.0.0.zip <PROJECT>/docker
<br>
    6. At this point, you should have the following files in your Docker project directory

    cd <PROJECT>/docker
    ls
        Dockerfile       	
        docker-entrypoint.sh
        wso2am-3.0.0.zip
<br>
    7. Open the Dockerfile in a text editor.<br>
&emsp;&emsp;a. Remove the `wget command` downloading the product pack over the internet.
<img src="../../assets/img/updates/remove-wget-dockerfile.png" width="700">
<br>
&emsp;&emsp;b. Add a COPY command before RUN to copy the created zip file into the image.
    
    COPY wso2am-3.0.0.zip ${WSO2_SERVER}.zip
<br>
    8. Make the necessary additional custom changes to the Dockerfile.
For example, if we need to change the JDK version from the current version of 8 to 11, we must make the following changes.<br>
&emsp;&emsp;a. Identify the location where the JDK version is set.
<br>
<img src="../../assets/img/updates/jdk-version.png" width="700">
<br>
&emsp;&emsp;b. Change the line from `FROM adoptopenjdk/openjdk8:jdk8u222-b10-alpine` to `FROM adoptopenjdk/openjdk11:jdk-11.0.10_9-alpine`.
<br>
    9. Build the Docker image with the tag in the `PRODUCT_NAME:PRODUCT_VERSION.UPDATE_LEVEL` format.
        
    docker build . -t wso2am:3.0.0.25







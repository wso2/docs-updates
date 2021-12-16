### Image Tagging with WSO2 Updates 2.0

All the  Docker images packaging basic Updates for the relevant product profiles (except Hotfixes) are hosted in [WSO2 private Docker registry](https://docker.wso2.com/).
The docker images in the Docker Private Registry does stay in a special tagging format <br>

``
    {WSO2_PRODUCT_VERSION}.{UPDATE_LEVEL}-{OS_PLATFORM}
``

WSO2_PRODUCT_VERSION : displays the product version.<br>

UPDATE_LEVEL : displays update level.<br>

OS_PLATFORM : OS platform is shown (Images created for alpine and centos is shown as '-alpine' and '-centos' respectively. But Linux Ubuntu images are the default base OS and are not tagged specifically)<br>

For example, if WSO2 API Manager version 3.2.0 has a product Update level of 10, the relevant Alpine Linux based container image will include the following tags:

``
    apim.3.2.0.10-alpine
``

It's good to know the difference between unique and special tags used in the updated docker images:
lets take the same example - apim.3.2.0.10-alpine

WSO2_PRODUCT_VERSION : apim.3.2.0<br>
UPDATE_LEVEL: 10<br>
OS_PLATFORM : alpine<br>

According to the above example update level of this docker image is 10, which is a unique tag getting you to a specific update level. A special update tag 0 can also be used to stay on the latest update level. 

<a class="open-modal" data-open="modal1">
<img src="../../assets/img/updates/docker-tag.png">
</a>

<div class="modal" id="modal1" data-animation="">
    <div class="modal-dialog">
        <header class="modal-header">
            Docker image Tags <button class="close-modal" aria-label="close modal" data-close>✕</button>
        </header>
        <section class="modal-content">
             <img src="../../assets/img/updates/docker-tag.png">
        </section>
    </div>
</div>

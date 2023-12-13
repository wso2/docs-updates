
Receiving continuous updates to your environment can be done with ease using WSO2 recommended configuration management tools, which are Puppet and Ansible.<br>
listed below are the steps:

1. Go to the desired git repository location of the selected configuration management tool.
   [e.g., Let say we are using WSO2 APIM with ansible as the configuration management tool, thus the git repo to refer is `https://github.com/wso2/ansible-apim` ]
2. Clone the correct git repo.
3. Check out the latest tag of the product version.
   
      
         git checkout <version of the latest tag>
      

    !!! info
        The above command will be like ``git checkout v2.6.0.7`` for the latest WSO2 APIM 2.6.0 version.
<br>

4. Store the product pack you've downloaded in the `/files/packs` directory.<br>

5. Move to the `scripts` directory and run the `update.sh` in the main node.


         cd scripts
         ./update.sh
      

   
6.  After the product is updated, propagate the updated product pack to the relevant environments. (i.e. Development, Staging and Production)

  Refer the following diagram for a better understanding on continuous updates:

<a class="open-modal" data-open="modal1">
    <img src="../../assets/img/updates/continous-update.png">
</a>

<div class="modal" id="modal1" data-animation="">
    <div class="modal-dialog">
        <header class="modal-header">
            Continuous update <button class="close-modal" aria-label="close modal" data-close>✕</button>
        </header>
        <section class="modal-content">
             <img src="../../assets/img/updates/continous-update.png" style="max-width: 1200px">
        </section>
    </div>
</div>

!!! Note
   
    For more detailed information on WSO2's Puppet and Ansible configurations, refer the [link](../faq/#what-are-the-recommended-configuration-management-tools-to-deploy-configurations-to-clien).

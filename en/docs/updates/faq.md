
### Can I get WSO2 Updates free?

You can use a trial subscription for 6 months.

Find out more about [WSO2 Subscriptions](https://wso2.com/subscription/)

### What are the benefits I get from a subscription?

A paid subscription allows you to:

- Deploy **updates into your production environment immediately**, without waiting for an open source release.
- Receive **24x7 support** from WSO2 to resolve issues quickly.
- Help fund our ongoing R&D and operations.

Find out more about [WSO2 Subscriptions](https://wso2.com/subscription/)

### How can I migrate from WUM/In-place model to the new WSO2 Updates 2.0 model?
The WSO2 WUM and In place update tools have been decommissioned on 7th March 2023, Refer [Decommission plan](../../updates/wum-decommission/) and for any inquiries reach out to our [support team](https://support.wso2.com/).

### How often WSO2 Updates will be released to the user?
Updates will be released **bi-weekly** as new update levels. Follow the updates commands in
[updates command page](../../updates/update-commands/)

In production environments, WSO2 will announce urgent security fixes to customers via the Support Portal. In addition, WSO2 will announce all security updates, if any, to the customers monthly. Therefore, It is recommended to update your production environments monthly.

### How will I know the update tool I am currently using?
The WSO2 WUM and In place update tools have been decommissioned on 7th March 2023, Refer [Decommission plan](../../updates/wum-decommission/) and for any inquiries reach out to our [support team](https://support.wso2.com/).


### How can I update my product pack if my environment doesn't have Internet access?
1. First, update the product pack in an environment that has Internet access using **create-update** command. <br>
2. Next, transfer the created zip file securely to your isolated environment(s).<br>
3. Then run the **apply-update** command pointing the proper zip file location. If you have an older update client tool version, at this point the tool will show a message to re-run the same command.<br>
[The first run of `apply-update` command will self-update the tool]
4. Upon running the `apply-update` command again will propagate new updates to that environment easily.

##### What should you do if you get an`unknown command "apply-update" for "wso2update` error while applying updates offline?
The reason this error is displayed is because the update tool used is of an older version and does not support the apply-update command. To resolve this problem keenly follow the steps given below:<br>

1. Check the version of the Update Tool in the non-internet environment by running `wso2update_<os> version` command. <br>
2. If the version of the Update Tool in the non-internet environment is <strong>earlier than 1.3.0</strong>, copy a newer version of the tool that is fetched by an environment with internet.<br>
   &emsp;a. The latest version of the tool would be available in the `<PRODUCT>/bin` directory in the environment with internet after running the `create-update` command.<br>
3. Then while copying the update zip file into the non-internet environment, copy the updated tool executable into the `<PRODUCT>/bin` directory.

Learn more on the `create-update` and `apply-update` commands by referring [updates command page](../../updates/update-commands/)

### Do I need a key to unlock updates for production?

No. We trust our customers to adhere to the license terms. We make the terms clear to avoid accidental violations and reserve the right to remove access to updates or take other means to enforce the license against intentional violators.

Find out more about the [EULA license](https://wso2.com/licenses/eula/3.1).

### Can I choose which updates to install?

You can choose to update your product into a specific update level. This will update the product from the existing 
level to the chosen level, applying the updates in between.

### What license are WSO2 updates on?

We are releasing WSO2 updates with a commercial EULA license. Find out more about the [EULA license](https://wso2.com/licenses/eula/3.1).

### Should I test my updates and hotfixes?

WSO2 takes accountability to test all updates and hotfixes thoroughly in systems where all previous updates are 
installed. However, it is best to install the updates or hotfixes to either your development, staging or testing 
environment that has the same product distribution that runs on your production environment, execute test run and 
thereafter apply to the production environment.

### How do I know when updates are available?

You can be aware of the latest updates from WSO2 by logging into [Updates Portal](https://updates-info.wso2.com).

### Where can I find description and instructions related to specific updates and hotfixes?

You can check details about each update and hotfix in [Updates Portal](https://updates-info.wso2.com). Information about your subscribed products is
 also shown in [Updates Portal](https://updates-info.wso2.com).

### What can I do in case of an issue?

If you encounter any issues when using WSO2 updates, report a issue on Support Portal. Please be sure to attach the 
details of the error when you report it. You can get the details by getting the log files in `updates/logs` in the product directory.

### How can I know what changes are included in an update?

You can check the changelog of an update by log into the [Updates Portal](https://updates-info.wso2.com).

### I get the error as 'invalid credentials. Please enter valid WSO2 credentials'. What should I do?

Check whether you have given the correct WSO2 credentials. If yes, check whether your password has the $ sign. If 
yes, escape the $ sign using escape character '\'. 
    
        Example
         Password - 123$abc
         Should be entered as 123\$abc

### Should I change configurations when a proxy server/firewall is running?

Yes. WSO2 updates are received by connecting to the `https://api.updates.wso2.com, https://cdn.updates.wso2.com, 
https://product-dist.wso2.com and https://wso2.com, https://gateway.api.cloud.wso2.com`. If your system connects to 
the Update service through a proxy server/firewall, whitelist the above-mentioned endpoints.

Since WSO2 update tool is a command-line tool, the proxy should be configured from your command-line using below 
command:

        export http_proxy=http://username:password@proxyhost:port/
        
If you are behind an NTLM proxy, you can use a third party tool like CNTLM to do the NTLM proxy authentication. See 
the [CNTLM documentation](http://cntlm.sourceforge.net/) for instructions.

### What if my proxy runs only on http: protocol?
You can achieve this by sending HTTPS traffic to the proxy server using plain http, Change the variable HTTPS_PROXY to be as follows:

``
HTTPS_PROXY=https://<proxyIP>:<proxyPort>  ->  HTTPS_PROXY=http://<proxyIP>:<proxyPort>
``

### Do I have to run the update tool in all the servers in my environment?
This is not a WSO2 recommended approach. If you have several servers running in your environment, it is prudent to use a Configuration Management System.
In this way, you update the product pack once and distribute the same using the Configuration Management System to other servers.

### What are the recommended configuration management tools to deploy configurations to client nodes?

WSO2 recommended configuration tools to work with when using WSO2 updates are Ansible and Puppet.

Ansible resources: 

    WSO2 APIM: https://github.com/wso2/ansible-apim/blob/master/README.md

    WSO2 EI: https://github.com/wso2/ansible-ei/blob/master/README.md

    WSO2 IS: https://github.com/wso2/ansible-is/blob/master/README.md

Puppet resources:

    WSO2 APIM: https://github.com/wso2/puppet-apim/blob/master/README.md

    WSO2 EI: https://github.com/wso2/puppet-ei/blob/master/README.md

    WSO2 IS: https://github.com/wso2/puppet-is/blob/master/README.md      

### How to use update commands in automation scripts?

Update tool client supports use of flags for user input values and exit codes for commands. 
    
   * Use user input commands 
   
  <img src="../../assets/img/updates/full-flag.png" width="700">
   
  <img src="../../assets/img/updates/abri-flag.png" width="700">
   
   * Use exit codes
   
   <img src="../../assets/img/updates/exit-code.png" width="700">

### Are the updates I get from the Updates Client is secure and assures authenticity?
The <strong>Update tool</strong> communicates with the <strong>WSO2 Update Service</strong> to get details of the updates that need to be downloaded and applied. During this communication, 
the following information is obtained from the  WSO2 Update Service:<br>
        1. Artifacts to be downloaded. <br>
        2. md5sum values of the artifacts.<br>
        3. Several other metadata required for the next invocations.
    
After getting information on the updated files, the Update tool makes an authenticated invocation to the CDN to download the necessary updates. 
The client’s communication with the WSO2 Update Service and CDN are secured through HTTPS.
    
After the necessary files have been downloaded, the Update tool validates the authenticity of the files by comparing their md5sum values with the values obtained 
from the WSO2 Update Service in the initial step. This ensures that the files have not been tampered with after the download is complete. 
Thereafter, the Update tool applies the downloaded updates and creates an updated product distribution.

### How can I get docker images with updates and how will those be distinguished?
Navigate to official [WSO2 Docker Repository](https://docker.wso2.com/index.php) observe all the docker images for that chosen product listed,
select the docker image based on `<product-name>`,`<product-version>`,`<update-level>` and the optional `[OS]` requirement.<br>
The `<docker-file-version>` represents the docker file version that was used to build this image for reference purposes (you may disregard this value).

Naming conversion of docker images is as follows:<br>

``
    <product-name>:<product-version>.<update-level>-<docker-file-version>-[OS]
``

e.g., wso2am:3.2.0.3-spec1-alpine

### How can I receive updates to each node (Dev, Staging and Production) when deployment/server directory is shared among nodes? 
Updates can be received to nodes when the same is sharing deployment/server directory. Listed below are the recommended ways to achieve this:<br>
<ul>With the aid of a **Configuration Management Tool**:<br>
<ol>
    <li>Stop all running product packs.</li> 
    <li>Unmount the shared directory from all nodes except the main node of Configuration Management Tool. (If the shared directory is not mounted in the main node of the Config Management setup, the user has to mount it to the main node).<br></li>
    <li>Execute WSO2 update tool on the main node to update the product pack.<br></li>
    <li>Using the configuration management tool, transfer the updated pack to the other nodes.<br>
    <li>Mount the shared directory on other nodes, at this point the update is successful on all the deployment node.<br>
<ol>
</ul>
<ul>Without the aid of a **Configuration Management Tool**:<br>
<ol>
    <li>In the deployment, first stop all product packs.<br></li>
    <li>Unmount the shared directory (deployment/server) in all servers except in one server/instance.<br></li>
    <li>Run WSO2 Update Tool to update the product pack with the latest changes (jar, war, and webapp changes).<br></li>
    <li>If there are conflicts take steps to manually resolve them.[Refer Resolve Conflicts page](../../updates/resolve-conflicts/)<br>
    <li>This will apply all the updates sent for deployment/server directories from WSO2. <br></li>
    <li>Copy the updated pack to all other nodes replacing their existing product.<br></li>
    <li>Mount the shared directory in all nodes and start servers. Now the whole deployment is updated.</li>
</ol>
</ul>

### Is it mandatory to have a configuration management tool configured or can we take the Updates manually to the environments? 
It is not mandatory to have a configuration management tool configured, but having a configuration management tool makes the continuous updates process easy,
and it aids configuration with less possibility of human errors.

### How the keystore and truststore configurations are incorporated with a configuration management tool? 
Refer [APIM Ansible repository Documentation](https://github.com/wso2/ansible-apim/tree/3.2.x#including-custom-keystore-and-truststore) to get an insight on customizing keystore and truststore configurations that are integrated with a configuration management tool.

### How to persist customizations done on the servers during each update? 
1. If there are .jar or UI customization those changes should be done in configuration management server. Those changes should also be pushed to your forked repository, for future use.<br>
2. The customized files should be in the sub-directories of the `files` directory. (Particularly, all .jar files and UI customizations should be added to the `misc` folder.)<br>
3. Next you need to change the script to include [group customizations/changes](https://github.com/wso2/ansible-apim/blob/3.2.x/roles/common/tasks/custom.yml). On the contrary, if there are any [role specific changes](https://github.com/wso2/ansible-apim/blob/3.2.x/roles/common/tasks/custom.yml) the script changes should be performed in the respective role(s).

### What are the correct steps to apply the same Update level to all the nodes in the deployment if a configuration management tool is not being used? 
In some situations' a Configuration Management Tool will not be configured, however WSO2 recommends the use of a Configuration Management Tool to mitigate human errors
as the manual intervention may lead to some flaws. <br>
Steps to apply the same update level across all node: <br>
1. In a pre-production environment, update to the required update level using the --level flag (e.g., ./wso2update_linux --level 10)<br>
2. Run all testcases and verify the update in that environment.<br>
3. Propagate the same updated product pack to other and production environments(using rolling updates, Canary or Blue-green update methods).

### If nodes are started with product profiles, how to take updates? 
First take the update of the base product and thereafter distribute the updated pack to other deployment environments.
Then, run different profiles on those environments as needed.

### How to change the Backup location?
By default, the WSO2 Update tool will use `<user_home>/.wso2-updates` in the users home directory as the backup location.<br> Therefore, if you want to change the backup location run the update tool command with <strong> --backup </strong> flag followed by the new backup location.<br>

``
    ./wso2update_<os> --backup <New backup location>
``

!!! Note
    The above flag needs to be provided only when changing the backup location. Subsequent execution of the same command repetitively will automatically use the provided backup location.

### How to create an updated product zip to be used in a pipeline?
Follow the steps described below to create an updated product zip that can be used in a pipeline.<br>
1. Set the following environment variables<br>
    
        WSO2_UPDATES_SKIP_CONFLICTS="true"
        WSO2_UPDATES_SKIP_MIGRATIONS="true"
<br>
2. Download/Copy the required U2 base pack to your pipeline workspace. (You can download the U2 base pack from the WSO2 website and host it internally so that you can access the same from your pipeline.)
<br>
3. Unzip the product pack. Use the command shown below:<br>
   
        unzip -q <product pack zip name>
<br>
4. Run the update tool suited to your OS. Refer the [link](../../updates/update-tool/#update-commands-for-os)<br>
<strong>Note :</strong><br>&nbsp;&nbsp; a. If you already have a WSO2 subscription use the following command to run the updates with the user credentials.<br>
&nbsp;&nbsp; b.  When a self update (the update tool will run a self update when the tool is not up to date. This is a automatic procedure) is executed, the update tool will generate a Exit Code of 2. Thus, it is recommended to configure the pipeline to rerun the update command.

        [path_to_product_pack]/bin/<OS specific update command> -u $WSO2_UPDATE_USER -p $WSO2_UPDATE_PASSWORD
<br>

5.Run the following command to re-zip the updated product pack.

        zip -r [path_to_product_pack].zip [path_to_product_pack]
<br>
6. You can use the zip file created in step 6 in the rest of the pipeline.

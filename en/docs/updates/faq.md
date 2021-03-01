
### Can I get WSO2 Updates free?

You can use a trial subscription for 90 days.

Find out more about [WSO2 Subscriptions](https://wso2.com/subscription/)

### What are the benefits I get from a subscription?

A paid subscription allows you to:

- Deploy **updates into your production environment immediately**, without waiting for an open source release.
- Receive **24x7 support** from WSO2 to resolve issues quickly.
- Help fund our ongoing R&D and operations.

Find out more about [WSO2 Subscriptions](https://wso2.com/subscription/)

### How often  WSO2 Updates will be releases to the user?
Updates will be released **bi-weekly** as new update levels. Follow the updates commands in
[Updates command page](../../updates/update-commands/)

In production environments, WSO2 will announce urgent security fixes to customers via support JIRAs. In addition, WSO2 will announce all security updates, if any, to the customers monthly. Therefore, It is recommended to update your production environments monthly.

### How can I update my product pack if my environment doesn't have Internet access?
First, update the product pack in an environment that has Internet access.
Thereafter, transfer the updated pack to the lockdown environment.

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

If you encounter any issues when using WSO2 updates, report a ticket at Support JIRA. Please be sure to attach the 
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
https://product-dist.wso2.com and https://wso2.com`. If your system connects to 
the Update service through a proxy server/firewall, whitelist the above-mentioned endpoints.

Since WSO2 update tool is a command-line tool, the proxy should be configured from your command-line using below 
command:

        export http_proxy=http://username:password@proxyhost:port/
        
If you are behind an NTLM proxy, you can use a third party tool like CNTLM to do the NTLM proxy authentication. See 
the [CNTLM documentation](http://cntlm.sourceforge.net/) for instructions.

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
   
### How do I migrate from WUM and In-place to Updates 2.0 ?

* Update the current product pack to the latest update level using WUM or in-place tool. This will make Update tool 
client available inside `<product_home>/bin` directory. 
* Run the [Update commands](../../updates/update-tool/) on top of the update tool. This will 
update the product pack to comply with Updates 2.0

### How can a user merge the *WUM Diff* manually to get updates using WSO2 Updates 2.0?
To get Updates using the new WSO2 Updates model follow the steps below<br>

1. First get the newest product pack from WUM (Run `wum update <product>` e.g., wum update wso2am-3.0.0). <br>
2. Apply [WUM diff](https://docs.wso2.com/display/updates100/WUM+Commands+Guide#WUMCommandsGuide-wumdiff) as you have been doing before to a copy of product pack (which contain your customizations). <br>

!!! Note
    The diff ZIP is created in the location from where you executed the diff command.
<br>
3. Now your current pack is congruent with WSO2 Update 2.0, thus you are able to run the [Updates tool](../../updates/update-tool/) and receive WSO2 Updates.<br>
4. Test the updated product distribution and deploy it in your production environment.

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

### How do I migrate from WUM and In-place to Updates 2.0?

* Update the current product pack to the latest update level using WUM or in-place tool. This will make the new Update tool
  client available inside `<product_home>/bin` directory.
* Run the new Update Tool (e.g., wso2update_linux for linux users) refer [Update commands](../../updates/update-tool/) for other OS's. This will
  update the product pack to comply with WSO2 Updates 2.0, and the product pack will be in its latest update level.

### How can a user currently using *WUM Diff* migrate to WSO2 Updates 2.0?
To get updates using the new WSO2 Updates model follow the steps below: <br>
1. First, get the newest product pack from WUM (Run `wum update <product>` e.g., wum update wso2am-3.0.0).<br>
2. Apply [WUM diff](https://docs.wso2.com/display/updates100/WUM+Commands+Guide#WUMCommandsGuide-wumdiff) as you have been doing before to a copy of product pack (which contain your customizations). <br>

!!! Note
    The diff ZIP is created in the location from where you executed the diff command.
<br>
3. Run the new Update Tool (e.g., wso2update_linux for linux users) refer [Update commands](../../updates/update-tool/) for other OS's. This will update the product pack to comply with WSO2 Updates 2.0, and the product pack will be in its latest update level.<br>
4. Now your current pack is congruent with WSO2 Updates 2.0.<br>
5. Test the updated product distribution and deploy it in your production environment.

### Does the new WSO2 Updates 2.0 support a command similar to *WUM Diff*?
No, Wum diff in the older/WUM model requires manual intervention. Therefore, it is prone to errors as a result commands that need manual file copying task were excluded from the updates 2.0

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

### How to migrate from WUM to the new Updates model if a Configuration Management Tool is being used ?
If a Configuration Management Tool is being used, follow the steps below to convert to the new updates model.<br>
The respective product pack lies in the `files/packs` directory, to migrate to updates 2.0 seamlessly you have to make both the product pack, and the `scripts/update.sh` file compatible with Updates 2.0.
<br>
- To update the **product pack** - Go to` scripts` directory and run the `./update.sh` script.<br>
- To update **scripts/update.sh** file - Checkout the latest [v3.2.0.x](https://github.com/wso2/ansible-apim/tags) tags, in this example WSO2 APIM.

  ``
    git checkout v3.2.0.3
  ``
   
Now your updates setup is compatible with the new updates model. Thus, in the future when the `update.sh` script is executed, updates will be delivered using the new updates model.
      
### How to differentiate docker images created with new updates from WSO2 Docker Repository?
1. Login to [WSO2 Docker Repository](https://docker.wso2.com/) <br>
2. In the shown list, choose the product that is used in your deployment environment (To easily explain we will use WSO2 APIM as a product).<br>
3. Considering the example mentioned above, Choose wso2am as the repository name.<br>
    Docker images with updates:<br>
    1. If you are using docker images in WUM with **three digit version** like wso2am:3.2.0 then switch to e.g.,3.2.0.0 to get docker images created using the new WSO2 updates 2.0. <br>
    2. Using the WUM model if you have used docker images **with timestamp** like wso2am:3.2.0.1612370755920.2 then switch to an image with specific update level for example wso2am:3.2.0.8 using the new WSO2 updates 2.0<br>
    
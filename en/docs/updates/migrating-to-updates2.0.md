### How do I migrate from WUM and In-place to Updates 2.0?

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

### Is it mandatory to have a configuration management tool configured or can we take the Updates manually?
It is not mandatory to have a configuration management tool configured, but having a configuration management tool makes the continuous updates process easy, 
and it aids configuration with less possibility of human error.

### What are the correct steps to apply the same Update level to all the nodes in the deployment if a configuration management tool is not being used?
In some situations' a Configuration Management Tool will not be configured, however WSO2 recommends the use of a Configuration Management Tool to mitigate human errors 
as the manual intervention may lead to some flaws. <br>
Steps to apply the same update level across all node: <br>
1. In a pre-production environment, update to the required update level using the --level flag (e.g., ./wso2update_linux --level 10)<br>
2. Run all testcases and verify the update in that environment.<br>
3. Propagate the updates to production environment (using rolling updates, Canary or Blue-green update methods).

### If nodes are started with product profiles, how to take the manual Updates?
First take the update of the base product and thereafter distribute the updated pack to other deployment environments. 
Then, run different profiles on those environments as needed.

### How to use Configuration Management Tool to get WUM updates?
The Following steps are used to get latest WSO2 APIM updates using Ansible as a Configuration Management Tool.<br>
1. Folk the newest WSO2 APIM Pack for the latest tag. <br>
2. Run the `update.sh` and update the pack - by performing this action product pack takes its latest state<br>
3. Checkout tag 3.2.0.x take the latest tag - Ansible scripts will be compatible with the new update model<br>
4. Take future updates by running the `.update.sh` command. <br>

### How to differentiate docker images created with new updates from WSO2 Docker Repository?
1. Login to [WSO2 Docker Repository](https://docker.wso2.com/) <br>
2. In the shown list, choose the product that is used in your deployment environment (To easily explain we will use WSO2 APIM as a product).<br>
3. Considering the example mentioned above, Choose wso2am as the repository name.<br>
    Docker images with updates:<br>
    1. If you are using docker images in WUM with **three digit version** like wso2am:3.2.0 then switch to e.g.,3.2.0.0 to get docker images created using the new WSO2 updates 2.0. <br>
    2. Using the WUM model if you have used docker images **with timestamp** like wso2am:3.2.0.1612370755920.2 then switch to an image with specific update level for example wso2am:3.2.0.8 using the new WSO2 updates 2.0<br>
    
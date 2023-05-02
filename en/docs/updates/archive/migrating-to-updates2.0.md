### How do I migrate from WUM and In-place to Updates 2.0? 

* Update the current product pack to the latest update level using WUM or in-place tool. This will make the new Update tool
  client available inside `<product_home>/bin` directory.
* Run the new Update Tool (e.g., ./wso2update_linux for linux users) refer [Update commands](../../updates/update-tool/) for other OS's. This will
  update the product pack to comply with WSO2 Updates 2.0, and the product pack will be in its latest update level.

### How can a user currently using *WUM Diff* migrate to WSO2 Updates 2.0? 
To get updates using the new WSO2 Updates model follow the steps below: <br>
1. First, get the updated product pack from WUM (Run `wum update <product>` e.g., wum update wso2am-3.0.0).<br>
2. Run [WUM diff](https://docs.wso2.com/display/updates100/WUM+Commands+Guide#WUMCommandsGuide-wumdiff) command as you have been doing before to create a zip file (which contains a diff between timestamps you have specified). <br>
3. Perform [steps 4 to 9](https://docs.wso2.com/display/updates100/Getting+Continuous+Updates) stated in the document.

!!! Info
    Now you have updated the product pack to the up to date state using the WUM model. After updating, you have the required tools to get updates from Update2.0 model in the future. <br> Read about the new [Update2.0 model](https://wso2.com/updates).
<br>
4. Run the new Update Tool (e.g., ./wso2update_linux for linux users) refer [Update commands](../../updates/update-tool/) for other OS's. This will update the product pack to comply with WSO2 Updates 2.0, and the product pack will be in its latest update level.<br>
5. Now your current pack is congruent with WSO2 Updates 2.0.<br>
6. Test the updated product distribution and deploy it in your production environment.

### How to migrate from WUM to the new Updates model if a Configuration Management Tool is been used ?
If a Configuration Management Tool is been used, follow the steps below to convert to the new updates model.<br>
The respective product pack lies in the `files/packs` directory, to migrate to Updates 2.0 seamlessly you have to make both the product pack, and the `scripts/update.sh` file compatible with Updates 2.0.
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
    2. Using the WUM model if you have used docker images **with a timestamp** like wso2am:3.2.0.1612370755920.2 then switch to an image with specific update level for example wso2am:3.2.0.8 using the new WSO2 updates 2.0<br>
    
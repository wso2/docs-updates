
You can get continuous updates for your Dev, Staging, and Production Environments using the Configuration Management tools as its benefits are highlighted. Namely, changes and deployments are implemented faster, remove the possible room for human error, while making system management predictable and scalable.
Below are the steps a user has to follow to seamlessly propagate updates to multiple environments.
(To easily illustrate we are describing this process for a user using the latest version of WSO2 APIM and managing continuous updates using Ansible)
 
### Configuring the control node for propagation
1. Install the Ansible v.2.5 in your deployment environment. Refer [Ansible Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

2. Thereafter, take a git clone [WSO2 APIM Ansible resources] (https://github.com/wso2/ansible-apim/)
   
    ``
        git clone https://github.com/wso2/ansible-apim.git
    ``

3. Check out the latest tag of the product version.
   
    ``
        cd ansible-apim
        git checkout <version of the latest tag>
    ``

!!! info
    The above command will be like ``git checkout v3.2.0.3`` for the latest WSO2 APIM 3.2.0 version.

!!! Note
    The Ansible resources obtained from GitHub only contains resources for a single deployment environment (dev) by default. The parameters with respect to this environment are found in the `ansible-apim/dev` directory. <br>
Shown below is the folder structure of the `dev` folder.

        |--	apim-ansible(git)
        |	|- dev
        |	|	|- host_vars<profiles>
        |	|	|- group_vars<profiles>
        |	|	|- Inventory
<br>
4. Create copies of the same directory and rename them reflecting the required  deployment environments in your setup (e.g., Staging, Production).

    cp -r dev staging
    cp -r dev production
<br>
5. Next, configure the parameters in the `group_vars` and `host_vars` directories to values suitable to the deployment environment.<br>
6. Later navigate to the `Inventory` folder and change the [ip_address] and [ssh_user] details for the preferred environment.<br>
7. Last refer [copy files locally](https://github.com/wso2/ansible-apim#copying-packs-locally) and perform the required changes.<br>

### Propagating updates to Multiple Environments

1. After all the above steps are completed, navigate to the ``script`` folder in the control node and run update.sh file. Define the product pack that must be updated with respect to the profile to be updated.

        cd ansible-apim/scripts
        ./update.sh -p apim


2. For more information on executing the update script, please refer to the documentation in `ansible-apim/scripts/update_README.md`.
3. When the above-mentioned update.sh file is executed, the script brings up the relevant product pack to its latest update level.
4. While the product pack is brought up-to-date, conflicts could be encountered if the user has made customizations to the pack and will be displayed in the console.
5. Therefore, conflicting changes should be resolved by perusing the [resolve conflicts page](../resolve-conflicts/) and thereafter re-running the update.sh file.<br>

    [For example `./update.sh -p <profile-name>`]<br>
   
   
        ./update.sh -p apim


6. After all the conflicts are resolved (Without producing warning or errors) in your current environment, updates are properly installed in the aforementioned environment.<br> 
7. Perform git commit and push the template changes to your repository everytime a successful update has been performed.<br>
8. Disseminate the update to the other deployment environments (dev) using the following command. Now the user can perform their expected test on this environment as the updates are properly propagated to the development environment.<br>

    
        ansible-playbook -i dev site.yml
                                        
9. Thereafter, distribution of updates to Staging and Production environments can be done using these commands:
    
        ansible-playbook -i staging site.yml
        ansible-playbook -i production site.yml
<br>
10. Updated product pack changes will be distributed to the respective deployment environment.

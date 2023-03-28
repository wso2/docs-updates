### What are Hotfixes? 
Hotfixes are an immediate fix for a customer reported incident and will always be applied on an update level. Hotfixes are in the form of a `.zip file` that
needs to be applied on top of the product pack using the update client tool.
Further, A hotfix is particular to a customer reported issue, and an update level. <br>

Hotfixes are <strong>best-suited</strong> if you are:<br>
1. Experiencing a sudden issues, after a long error-free spell in your production environment.<br>
2. Have tested a certain update level thoroughly in a QA Environment and just before concluding testing you have found some test cases are failing.<br>
3. Having a single issue to be addressed and needs to be pushed to the production environment soon. Reporting an issue and receiving a hotfix saves you time and trouble.

### How to apply hotfix(es)?
As you already know hotfixes for an important fix is received as a zip file. The zip file can be applied to your environment as shown as [here](../../updates/update-commands/#wso2update_os62-apply-hotfix)

### How to create a Docker image with Hotfixes?
Creating a hotfix applied Docker image is simple. Follow the steps given below to seamlessly get updates and hotfixes to your containerized environment.<br>
  1. Create an updated product pack to the corresponding update level.<br>
  2. Download and copy the hotfix file to the relevant machine (e.g., Desktop or Server)<br>
  3. Apply the [hotfix command](../../updates/update-commands/#wso2update_os62-apply-hotfix) to install the hotfix for the update level.<br> 
  4. Then run the 'create-docker' command to create a Docker image with hotfixes. Follow    instructions given in the [update commands page](../../updates/update-commands/#wso2update_os62-create-docker)<br>
  5. Thereafter, add the created Docker image to your private Docker registry.<br>
  6. Rollout the newly created Docker image to Staging environment and test thoroughly.<br>
  7. If all compliance test are passing, follow Step 5 in other environments including the    Production environment.

### How to create a Docker image with Hotfixes for Pipelines?
The method being used is akin to the one described in [How to create a Docker image with Hotfixes?](../../updates/hotfixes/#how-to-create-a-docker-image-with-hotfixes).
However, the sole contrast lies in the need to automate the process of implementing Hotfixes. A sample script has been devised as an example for your convenience, which can be accessed [here](../../assets/attachments/apply-hotfix.sh).

Make use of the script as a reference and customize it as per the specifications of your pipeline.

You have to run the script as follows:<br>

    ./apply-hotfix.sh <product_pack_path> <hotfix_directory> <username> <password>

`<product_pack_path>` : The product pack that is updated to a corresponding update level.<br>For example - wso2am-4.1.0.10<br>
`<hotfix_directory>` : Path to a directory where you have already copied all the hotfixes corresponding to the update level. e.g., in this example, update level 10<br>
`<username>`: The username you used to access WSO2 Updates<br>
`<password>`: The password of the user

The script performs the following actions:

1.  The script first validates the operating system (the sample script only runs on Darwin and Linux Operating Systems)
2.  Validate inputs
3.  Extract the product pack
4.  Initialize the update tool. This will allow the update tool to self update if there is a newer version of the update tool
5.  Validate hotfix sequence. The hotfixes need to be applied in a specific sequence. e.g., 1, 2, 3
6.  [Install hotfixes](../../updates/update-commands/#wso2update_os62-apply-hotfix)
7.  Create a Docker image.

After creating the Docker image, you can push it to your private Docker registry and conduct any necessary security checks.
Thereafter, you can refer to this Docker image in the remainder of your pipeline.

!!! Note

    To undo a hotfix, you can run this script again after removing the corresponding hotfix. It is important to note that the remaining files in the hotfix directory must always be in sequence. Therefore, you should remove hotfixes in descending order.
****
### How move hotfixes to the latest update level in a containerized environment?
Once the issue has been addressed in an update level, we recommend you to move to the update level that includes the fix or latest update level. This can be done by retrieving the docker image from the [WSO2 private Docker registry](https://docker.wso2.com/)  with the right version tag.

### Steps to follow if you are moving from hotfixes to the latest update level on your product pack
Hotfix is a single fix provisioned to address a critical issue in the production environment. Once the issue has been addressed in an update level, we recommend you to revert the hotfix(es) and move to the latest update level.

To avoid missing any changes made during the application of hotfixes, it is important to back up the following directories from the current product pack before reverting the hotfix(es).

- `repository/deployment/server/` - only if you have created new APIs, execution plans<br>
    <strong>Note</strong>: For IAM products this is not needed.<br>
- `repository/tenants/` - only if you are using multi tenancy<br>
    <strong>Note</strong>: For MI products this is not needed<br>
- `repository/resources/security/` - only if you have renewed or altered JKS after the hotfix(es) are applied.
- `repository/database/` - if you are not using external RDBMS for any of the databases.
- `repository/components/lib/` - if you have copied new jars to the lib directory after the hotfix(es) are applied.
- `repository/components/dropins/` - if you have copied new bundles to the dropins directory after the hotfix(es) are applied.
- `repository/logs/` - if you need to preserve the old logs created during the hotfix applied duration.

After all the above directories are backed up, follow below steps to reverting the applied hotfix(es)<br>

1. Run the following command from the bin folder (`<product-home>/bin`) to check the current state: This command will list all the hotfix(es) that has been applied to a particular product pack. 
   
    ``   
        ./wso2update_<os> current-state
   ``

2. Run the following command that will remove the last applied hotfix. If there are multiple hotfixes applied, repeat the command for each of them.
   
    ``
        ./wso2update_<os> revert-hotfix
    ``   
   
3. Then run the `current-state` command again to verify that all hotfixes are removed.

!!! Note
    Make sure all the hotfixes applied to the pack are reverted before you proceed to the next step.
<br>
4. Lastly, run the update tool to update to the latest update level containing the fixes corresponding to all the hotfixes.<br>
   &emsp; 
   ``
        ./wso2update_<os>
   ``
<br>   
Refer the [webinar link](https://www.youtube.com/watch?v=Z2XeRhzkdpI&t=1884s) to learn more on the reverting hotfixes.

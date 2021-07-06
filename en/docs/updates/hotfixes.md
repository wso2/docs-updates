### What are Hotfixes? 
Hotfixes are an immediate fix for a customer reported incident and will always be applied on an update level. Hotfixes are in the form of a `.zip file` that
needs to be applied on top of the product pack using the update client tool.
Further, A hotfix is particular to a customer reported issue, and an update level. <br>

Hotfixes are <strong>best-suited</strong> if you are:<br>
1. Experiencing a sudden issues, after a long error-free spell in your production environment.<br>
2. Have tested a certain update level thoroughly in a QA Environment and just before concluding testing you have found some test cases are failing.<br>
3. Having a single issue to be addressed and needs to be push the production environment soon. Reporting an issue and receiving a hotfix saves you time and trouble.

### How to apply hotfix(es)?
As you already know hotfixes for an important fix is received as a zip file. The zip file can be applied to your environment as shown as [here](../../updates/update-commands/#wso2update_os62-apply-hotfix)

### Steps to follow if you are moving from hotfixes to the latest update level on your product pack
Hotfixes are temporary fixes provided to address critical issue(s) in the production environment. Once the issue has been addressed in an update level, we recommend you to revert the hotfix(es) and move to the latest update level.

This can be done using the following steps:<br>

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

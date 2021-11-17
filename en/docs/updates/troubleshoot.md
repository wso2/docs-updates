### Update Troubleshoot Guide

<table>
<colgroup>
</colgroup>
<thead>
<tr class="header">
<th><p>Error Message</p></th>
<th><p>Explanation</p></th>
<th><p>Resolution</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Unable to connect to WSO2 Update</p></td>
<td><p>The Update Tool is not able to connect to the WSO2 Update Server due to a network failure or the server 
response is not successful.</p></td>
<td><p>Check your network connection. If the connection is still failing, please report to WSO2 at <a 
href="https://wso2.com/contact">https://wso2.com/contact</a></p>
<p>Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in `updates/logs` in the product directory.</p></td>
</tr>
<tr>
<td><p>File validation failed</p></td>
<td><p>Local modifications have been made to the file being updated.</p></td>
<td><p>If the update command is being executed, delete the content in the &lt;UpdatesHome&gt;/updates (~/.wso2-updates/updates) directory and run the update tool again.
<p>If the hotfix command is being executed, download the hotfix file again and run the update tool against the 
newly-downloaded file.</p>
<p>If the connection is still failing, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2.com/contact</a></p>
<p>Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in updates/logs in the product directory.</p>
</td>
</tr>
<tr>
</tr>
<tr class="even">
<td>Error while downloading update file from UpdateFileURL</td>
<td>The Update Tool is unable to download an update file from the WSO2 Update service due to a server error.</td>
<td>Try running the update tool again. If the command continues to fail, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2
.com/contact</a>. Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in updates/logs in the product directory.</td>
</tr>
<tr>
<td>Unable to get MD5 hash of file</td>
<td>The update tool is unable to find the md5sum value of the file.</td>
<td>Try running the update tool again. If the command continues to fail, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2
.com/contact</a>. Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in updates/logs in the product directory.</td>
</tr>
<tr>
<td>Update configurations are not loaded</td>
<td>Update tool has encountered an error while loading the configuration values from the config file.</td>
<td>Try running the update tool again. If the command continues to fail, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2
.com/contact</a>. Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in updates/logs in the product directory.</td>
</tr>
<tr>
<td>Error while initializing updates config file</td>
<td>Update tool encountered an error while being executed for the first time.</td>
<td>Try running the update tool again. If the command continues to fail, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2
.com/contact</a>. Please be sure to attach the details of the error when you report it. You can get the details by 
getting the log files in updates/logs in the product directory.</td>
</tr>
<tr>
<td>Invalid credentials</td>
<td>The credentials provided are not valid. If the WSO2 account was created recently, the reason for the login failure may be that the credentials are not synced with the WSO2 Update Server.</td>
<td>Try again by providing the correct credentials. If your account was created a short while back, you might have to wait.
If authentication is still failing, please report to WSO2 at <a href="https://wso2.com/contact">https://wso2.com/contact</a>.
Please be sure to attach the details of the error when you report it. You can get the details by getting the log files in updates/logs in the product directory.</td>
</tr>
<tr>
<td>Username or password cannot be empty</td>
<td>The update tool is executed without providing values to the username or password.</td>
<td>Provide your credentials for the Username and Password and try again.</td>
</tr>
<tr>
<td>Unable to parse JSON file</td>
<td>Error while reading JSON file while running the update tool when updating or applying hotfix.</td>
<td><p>Unable to parse config.json:
    Check the JSON file at &lt;ProductHome&gt;/updates/config.json and fix issues with formatting.</p>
    <p>Unable to parse update.json:
    Remove the content in the &lt;UpdatesHome&gt;/updates (~/.wso2-updates/updates) directory and run the update tool again
    .</p>
    <p>Unable to parse hotfix.json:
    Download the hotfix file and apply the hotfix to the newly-downloaded file.</p>
    <p>If the error still persists, please report the issue to <a href="https://wso2.com/contact">https://wso2.com/contact.</p></a>
    <p>Please be sure to attach the details of the error when you report it. You can get the details by getting the log 
    files in updates/logs in the product directory.</p>
</td>
</tr>
<tr>
<td>Unable to identify the product</td>
<td>The update tool cannot identify the product it will be updating if the <code>product.txt</code> file is absent 
<strong>or</strong> if the information in the <code>product.txt</code>is been altered.</td>
<td>Make sure that the  &lt;ProductHome&gt;/updates/product.txt file exists and the file contains valid product information.</td>
</tr>
<tr>
<td>Only one service can be enabled at a given time</td>
<td>The configuration has enabled multiple services.</td>
<td>Check the &lt;ProductHome&gt;/updates/config.json file </td>
</tr>
<tr>
<td>Unable to revert as backups could not be found</td>
<td>The backup that was taken previously is no longer available in the location the backup was taken to.</td>
<td>Check for the backup directory from the config file at &lt;ProductHome&gt;/updates/config.json and check if any modifications were made to that environment.</td>
</tr>
<tr>
<td>Cannot revert because the backup directory has been modified.</td>
<td>The state of the backup is different from when it was taken.</td>
<td>Check for the backup directory from the config file at &lt;ProductHome&gt;/updates/config.json and check if the content of the backup is valid. If so, manually copy the directory to the current product setup.</td>
</tr>
<tr>
<td>Invalid update level</td>
<td>The current update level contains an invalid value.</td>
<td>Check if the configuration file in &lt;ProductHome&gt;/updates/config.json has been modified manually to contain an invalid value such as a non-numeric value for the update level.</td>
</tr>
<tr>
<td>Invalid requested update level</td>
<td>The update level provided along with the --level flag is invalid.</td>
<td>Check if a valid product version or non-numeric characters are provided for the update level.
    eg:
    <p>* level 3.1.0.4</p>
    <p>* level 4</p>
</td>
</tr>
<tr>
<td>Insufficient disk space</td>
<td>The machine does not have sufficient space to update the product.</td>
<td>Clear some disk space in the machine and run the update tool again. For more information on the issue please refer the <a href="../../updates/best-practices">Best Practices page</a></td>
</tr>
<tr>
<td>Error while extracting downloaded clients</td>
<td>An error occurred while the update tool is updating itself.</td>
<td><p>Check if the update tool has permissions to execute files in the &lt;UpdatesHome&gt;/updates (~/.wso2-updates/updates 
by default) directory and run the update tool again.</p>
    <p>If the error still persists, please report the issue to <a href="https://wso2.com/contact"> https://wso2.com/contact</a>.</p>
    <p>Please be sure to attach the details of the error when you report it. You can get the details by getting the log
     files in updates/logs in the product directory.</p></td>
</tr>
<tr>
<td>Invalid hotfix name</td>
<td>The hotfix being applied contains an invalid name.</td>
<td><p>Download the hotfix again and run the apply-hotfix command.</p>
    <p>If the error still persists, please report the issue to <a href="https://wso2.com/contact">https://wso2.com/contact</a>.</p>
    <p>Please be sure to attach the details of the error when you report it. You can get the details by getting the log
     files in updates/logs in the product directory.</p></td>
</tr>
<tr>
<td>Backup directory &lt;backup_directory&gt; cannot be inside the product directory &lt;product_directory&gt;.</td>
<td>Backup and the product pack location cannot be same.</td>
<td><p>Change the backup location to a new location that is not within the product pack.
       For more details on changing the backup location refer <a href="../faq/#how-to-change-the-backup-location">how to change the backup location</a></p></td>
</tr>
</tbody>
</table>
### Permission Restrictions
You may encounter the following error messages due to permission restrictions at an OS level.

<table>
<colgroup>
</colgroup>
<thead>
<tr class="header">
<th><p>Error Message</p></th>
<th><p>Explanation</p></th>
</tr>
</thead>
<tbody>
<tr>
<td>Unable to create directory</td>
<td>The update tool is unable to create the specified directory in the relevant location.</td>
</tr>
<tr>
<td>Unable to open file</td>
<td>The update tool is unable to open a file in the relevant location.</td>
</tr>
<tr>
<td>Unable to read file</td>
<td>The update tool is unable to read a file in the relevant location.</td>
</tr>
<tr>
<td>Unable to read directory</td>
<td>The update tool is unable to read the content of the directory in the relevant location.</td>
</tr>
<tr>
<td>Unable to write to file</td>
<td>The update tool is unable to write to a file in the relevant location.</td>
</tr>
<tr>
<td>Unable to create file</td>
<td>The update tool is unable to create a file in the relevant location.</td>
</tr>
<tr>
<td>Unable to close file</td>
<td>The update tool is unable to close the file at a relevant location.</td>
</tr>
<tr>
<td>Unable to delete file</td>
<td>The update tool is unable to delete the file at a relevant location.</td>
</tr>
<tr>
<td>Unable to move file</td>
<td>The update tool is unable to move the relevant file to a specified location.</td>
</tr>
<tr>
<td>Unable to delete the file</td>
<td>The update tool is unable to delete a file in the specified location.</td>
</tr>
<tr>
<td>Error while writing updates configurations to file</td>
<td>An error occurred while the update tool is modifying its configurations.</td>
</tr>
<tr>
<td>Unable to get the size of the directory</td>
<td>An error occurred while attempting to get the size of a directory.</td>
<td></td>
</tr>
<tr>
<td>Error while writing updates configurations to file</td>
<td>An error occurred while modifying the configurations of the update tool.</td>
</tr>
<tr>
<td>Error while deleting product directory</td>
<td>An error has occurred while attempting to delete a product directory. This occurs during a revert process.</td>
</tr>
</tbody>
</table>

If you encounter any of the above listed OS related issue:

* Check the OS-level permissions for creating directories in the relevant locations. 

!!! Infor
        You can enable permission to create directories in the &lt;UpdatesHome&gt; directory (~/.wso2-updates by 
        default).

* Check the available disc space and free some space if the available space is insufficient.

* If the error occurs even after enabling the above permissions, please report to WSO2 by accessing the  [Contact page](https://wso2.com/contact). 
Please be sure to attach the details of the error when you report it. You can get the details by getting the log files in `updates/logs` in the product directory.

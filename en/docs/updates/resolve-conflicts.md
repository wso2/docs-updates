### What are merge conflicts?
A merge conflict is likely to happen when a configuration file or a customized artifact has changed during the
update. If a file or an artifact has conflicts, the update tool will not attempt to merge them. Instead, you will need to manually apply 
the customizations on top of the updated files.


!!! Note 
    If the Update Tool identifies conflicts, you must resolve them or revert the update. You cannot proceed further without taking either of the mentioned actions.

### How to minimize merge conflicts

Below are the best practices for different file types when updating your products to reduce the number of merge conflicts.

- **.jar** files	
    -- Do not modify the original .jar files.


!!! Note 
    When updating your products, the WSO2 Update Tool replaces the existing .jar files with updated ones. **If you modify the original .jar files, any customizations will be lost.** <br>
    To avoid losing your previous customizations, use an extension point as explained in using Extension Points in Carbon and [WSO2 Extension page](https://github.com/wso2-extensions). <br>
    Or, refer to `https://store.wso2.com/store/pages/top-assets` for a list of released connectors and extensions.

- **.war** files	
    -- When updating your product, the WSO2 update tool will unarchive your .war file (if applicable) and apply updates
     on top of your customizations (if applicable).

- **.car** files	
    -- Do not modify the original .car files. In case your original product distribution contain .car files, do not 
    modify them as they can be changed by continuous updates.

- **.jag/.js** files	
    -- Maintain the same code indentation of the original .js files in the updated .js files.
- **.json** files	
    -- Maintain the same code indentation of the original .json files in the updated .json files. Else, there will be 
    merge conflicts.

!!! Best Practice
    Maintain the order of the `.json` file as much as possible. For example, when you add a new key-value pair, it is better to add it
    to the end of the file.

### How to resolve merge conflicts

Navigate to the locations of the files that have conflicts and note the files that are created by the update tool (text type files .jag, json, js):

 - The file that has your customizations (e.g., test.jag).
 
 - The file that was there in the previous update level before any customizations (e.g., test.jag.original).
 
 - The file that is in the new update level after updating (e.g., test.jag.new).
 
 - By looking at the created files (.original and .new), resolve the conflicts and save the resolved file with the .final extension (e.g., test.jag.final). 
       
 - Run the update tool again with the `--continue` flag for the tool to merge the changes in the .final file with the 
 file that created the conflict.
 
 - Go back to the location of the conflicting file and ensure that the tool has merged the  .final  file with the file 
 that had your custom configurations and deleted all the other temporary files (i.e., .original, .new, and .final).

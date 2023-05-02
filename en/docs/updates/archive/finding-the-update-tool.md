How can I identify the update model I am currently using to update product packs<br>

1.   If you remember the tool you have used to update the product for the last time it is easy to identify which model you used.<br>
    a.   If you ran `wum update <product-name-version>`, or a variant of `wum update` command in your last update process, you have used WUM method to update your respective product pack.<br><br>
    b.   If you executed `update_linux` command to update, or a variant of `update_linux`, you had used the In-place update tool to update the product. The In-place update tool is also an update method categorized under
WUM.<br><br>
    c.  If you ran `wso2update_linux` or a variant of `wso2update_linux`, then you have used the new Update 2.0 update mechanism.<br>

2.   However, if you don’t recollect the exact tool your company used to update. Please refer to the following steps to determine the update tool utilized:<br>
    a.   Download the product pack from one of your deployments and assess the following:<br>
        Please check `<product-pack>/updates/` directory:<br>
    -   If you find `config.json` and check the “update-level” in that file.<br>
        -   If the value is -1, you have run the U2 tool with a simple command like “wso2update_linux version”, but you haven’t updated the product using the U2 tool.  
        -   If the value is greater than 0, you are already using the recommended U2 update tool.<br>
    
    b.   Please check `<product-pack>/updates/` directory, if you find ‘config.yaml’ file you have used the In-place update tool. Which falls under WUM.<br>  
    c.   If you are unable to find either `config.json` or `config.yaml` in `updates/` directory, then you have used the WUM method to update your product pack.

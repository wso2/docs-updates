# Accessing Images via CLI (Command Line)

To pull images via a terminal or automation pipeline, you cannot use your **WSO2 Account Credentials** as previously. You must use a **User Token or a Service Token** generated from the WSO2 Support Portal to access [registry.wso2.com](http://registry.wso2.com).

### **Prerequisites: Generate a Token**

*Note: This is done in the WSO2 Support Portal, not the Registry Portal.*

1. Log in to the **WSO2 Support Portal**.  
2. Navigate to **Projects \> My Projects \> Registry Tokens**.  
3. Click **Generate Token** and provide a descriptive name (e.g., "Jenkins-Pipeline-Token").  
4. **Important:** Copy the **Token ID** and **Token Secret** immediately. The secret is shown only once.  
   
Please refer to the [Registry Token Management](registry-token-management.md) section for additional information.

### **Logging in to Docker/Container Client**

Open your terminal and run the login command using the credentials generated above.

* **Username:** Your generated **Token ID**.  
* **Password:** Your generated **Token Secret**.

```bash
docker login registry.wso2.com
# When prompted for Username: Paste your Token ID
# When prompted for Password: Paste your Token Secret
```

*Alternatively, in a single line:*

```bash
docker login registry.wso2.com -u <Your_Token_ID> -p <Your_Token_Secret>

i.e : docker login registry.wso2.com -u 'robot$example-token' -p 'top_secret'
```

### **Pull an Image**
After logging into the container registry successfully, you can pull images from the product repositories to which you are subscribed. i.e.:

```bash
docker pull registry.wso2.com/wso2-apim/am:4.5.0-alpine
```

# Accessing Images via CLI (Command Line)

To pull images via a terminal or automation pipeline, you cannot use your **WSO2 Account Credentials** as previously. You must use a **User Token or a Service Token** generated from the WSO2 Support Portal.

### **Prerequisites: Generate a Token**

*Note: This is done in the WSO2 Support Portal, not the Registry Portal.*

1. Log in to the **WSO2 Support Portal**.  
2. Navigate to **Projects \> My Projects \> Registry Tokens**.  
3. Click **Generate Token** and provide a descriptive name (e.g., "Jenkins-Pipeline-Token").  
4. **Important:** Copy the **Token Name** and **Token Secret** immediately. The secret is shown only once.  
   

### **Logging in to Docker/Container Client**

Open your terminal and run the login command using the credentials generated above.

* **Username:** Your generated Token Name.  
* **Password:** Your generated Token Secret.

```
docker login registry.wso2.com
# When prompted for Username: Paste your Token Name
# When prompted for Password: Paste your Token Secret
```

*Alternatively, in a single line:*

```
docker login registry.wso2.com -u <Your_Token_Name> -p <Your_Token_Secret>
```

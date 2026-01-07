# Accessing Images via CLI (Command Line)

CLI access uses user or service tokens generated in the WSO2 Support Portal.

## Prerequisites: Generate a Token

In the WSO2 Support Portal, go to Projects > My Projects > Registry Tokens and select **Generate Token**. 

Provide a descriptive name (for example, `Jenkins-Pipeline-Token`). 

Copy the token name and token secret immediately; the secret is shown only once.

## Logging in to Docker/Container Client

Log in from your container client using the token name as the username and the token secret as the password:

```bash
docker login registry.wso2.com -u <TOKEN_NAME> -p <TOKEN_SECRET>
```

After successful login, you can pull images using standard docker pull commands with the registry URL.

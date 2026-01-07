# Accessing the Registry Web Portal

Use the WSO2 Container Registry web portal to browse projects, repositories, and tags with your WSO2 account credentials.

## Logging In

1. Open registry.wso2.com and sign in with your WSO2 account credentials (same as the Support Portal).

!!! warning "Note"
    If you are already signed in to your WSO2 account, the session authenticates you automatically. Token-based credentials generated from the Support Portal are not valid for web portal login.

## Browsing Products and Projects

After login, the dashboard lists projects filtered by your active product subscriptions (for example, `wso2-apim`, `wso2-is`).

Select a project to view its repositories, then open a repository to see the available tags.

## Searching for an Image

To search for a specific artifact, use the search bar, set Type to Tags, and enter the product/tag (for example, `4.2.0-rocky`).

## Getting the Pull Command

To copy a pull command:

1. Open the repository
2. Pick the tag (for example, `latest` or `4.2.0.15`)
3. Click the artifact SHA
4. Copy the pull command (for example, `docker pull registry.wso2.com/wso2-apim/am:latest`)

# User Guide

Customers can perform the following token management operations:

1. Generate Token  
2. View Tokens  
3. Re-generate Secret  
4. Delete Token

### **Generate Token**

To generate a new token, follow these steps:

1. Click the **Generate Token** button.  
2. Enter a descriptive **Token Name**.  
3. Click the **Generate Token** button.

![Generate token page](../assets/img/updates/registry-token-generate-token-1.png)

Upon successful generation, the system will display the **Token Name** and the **Token Secret**. This token is required to pull WSO2 product images from the [WSO2 registry](http://registry.wso2.com).

![Generate token dialog 2](../assets/img/updates/registry-token-generate-token-2.png)

!!! important
    The **Token Secret** is displayed only once. Please ensure you back up the Secret before closing the window. If the Secret is lost or forgotten, you must refer to the [**Re-generate Secret**](#re-generate-secret) section below.

### **View Tokens**

Customers can view a list of all their generated tokens. The displayed information includes:

* Token Name  
* Subscription End Date  
* Products Associated with the Token  
* Created On  
* Token Status

![View tokens table](../assets/img/updates/registry-token-view-token-1.png)

### **Re-generate Secret** { #re-generate-secret }

This action should be used if the existing token Secret has been lost, forgotten, or compromised.

![Re-generate token Secret](../assets/img/updates/registry-regenerate-product.png)

!!! important
    Re-generating the Secret will immediately invalidate the previous Secret. Update all systems and applications using the old Secret with the newly generated one.

### **Delete Token**

If a token is no longer required, it can be deleted.

![Delete token confirmation](../assets/img/updates/registry-delete-product.png)

!!! important
    Deletion is a permanent action and **cannot be undone**.

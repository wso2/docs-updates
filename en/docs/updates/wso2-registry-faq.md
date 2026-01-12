# 3. FAQ

### **Q: I just purchased a new WSO2 product subscription. Why can't I pull the images?**

When a new subscription is added to your account, your existing **User Tokens or System Tokens** do not automatically receive permission for the new images. You must update them manually.

**Solution: Re-sync Products**

1. Go to the **WSO2 Support Portal** \> **Registry Tokens**.  
2. Find your existing token in the list.  
3. Click the **Re-sync Products** (refresh icon) button.  
4. This updates the token's permissions to include any new products you have recently subscribed to.

### **Q: I lost my Token Secret. Can I recover it?**

No. For security reasons, the secret is displayed only once upon generation.

**Solution: Re-generate Secret**

1. Go to the **WSO2 Support Portal** \> **Registry Tokens**.  
2. Select the **Re-generate Secret** option for the token.  
3. **Warning:** This will immediately invalidate the previous secret. You must update all pipelines or systems using the old secret.

### **Q: How do I remove access for an old server or employee?**

If a token is no longer required or if you believe it is compromised:

1. Go to the **Registry Tokens** page.  
2. Click the **Delete Token** (trash bin icon) button.  
3. This action is permanent and cannot be undone.
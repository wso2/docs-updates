### Best Practices to adhere when using WSO2 Updates
Here are the guidelines and recommendations to receive best update experience with WSO2 Updates 2.0.

1. Update frequently

    Frequent update of products will ensure the product is bug free and always  up to dated with new features, 
    security enhancements and improvements. WSO2 recommends updating your systems weekly or bi-weekly. Before 
    directly applying any updates to your production system, WSO2 always recommends applying any update to lower 
    environments such as testing, development or staging environments which has a similar product distribution as in
    production environment. 
   
!!! Note
    Before you run the update tool, **remember to stop** the product pack from running.

<br>
2. Add custom configurations or modifications<br>
   Follow guidelines when adding customization to product pack files. This will reduce the merge conflicts. Refer
    [how to reduce merge conflicts](../updates/resolve-conflicts.md).
<br>    
3. Run tests<br>
    WSO2 thoroughly tests and certifies each update and hotfix released. Regardless of whether an update or hotfix 
    running tests on your update environment ensures that all existing and new functionalities are working perfectly fine.
    
!!! Note  
    Whenever you apply an update WSO2 recommends you to apply the updates to lower environments, run tests and update the 
    production environment.
<br>
4.  Getting Updates to a lockdown Environment <br>
    The best practices disseminating updates to production environment with no internet connection is as follows:<br>
     1. First [receive the updates](../update-tool/#update-commands-for-os) in a lower environment that is connected to the internet. <br>
     2. Test the environment thoroughly.<br>
     3. Perform security checks mandate by your organization and verify the updated pack.<br>
     4. Last move the verified pack to the lockdown environment securely.
    
<br> 
5.  Use a Configuration Management tool. <br>
    There are a myriad of benefits of using a Configuration Management Tool. WSO2 advise the use of Configuration Management Tool such as [Puppet and Ansible](../faq/#what-are-the-recommended-configuration-management-tools-to-deploy-configurations-to-client-nodes) 
    to carry configuration changes flawlessly. Read more on our [Continuous Update Document](../continuous-update).

<br>
6.  Assess whether the environment getting the new updates has <strong>enough disk space</strong> before running the updates tool.<br>
    It is important to have adequate disk space in the environment that gets updates. When the update command is initiated, the tool takes a full backup of the current product, loads the applicable new updates and thereafter applies the new updates to the product pack.
    This process requires that your environment has enough space, and the tool calculates the same using the following equation: 
<br>
     (3 x packsize) + (updates_count x update_size) + 500mb 
<br>
    to ensure an error free update retrieval, check for adequate space before starting the update process.

<br>
7. WSO2 advise you to keep a copy of your most reliable Docker image in your own private Docker registry for future usage. Further, you can
run security and other crucial compliance checks before you onboard an image to your private registry. Read the step-by step guidelines on this by clicking [here](../updates/how-to-use-docker-images-to-receive-updates.md).
   
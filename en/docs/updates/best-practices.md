### Best Practices to adhere when using WSO2 Updates
Here are the guidelines and recommendations to receive best update experience with WSO2 Updates 2.0.

1. Update frequently

    Frequent update of products will ensure the product is bug free and always  up to dated with new features, 
    security enhancements and improvements. WSO2 recommends updating your systems weekly or bi-weekly. Before 
    directly applying any updates to your production system, WSO2 always recommends applying any update to lower 
    environments such as testing, development or staging environments which has a similar product distribution as in
    production environment. 

2. Add custom configurations or modifications

    Follow guidelines when adding customization to product pack files. This will reduce the merge conflicts. Refer
    [how to reduce merge conflicts](../updates/resolve-conflicts.md).
      
3. Run tests

    WSO2 thoroughly tests and certifies each update and hotfix released. Regardless of whether an update or hotfix 
    running tests on your update environment ensures that all existing and new functionalities are working perfectly fine.
    
!!! Note  
    Whenever you apply an update WSO2 recommends you to apply the updates to lower environments, run tests and update the 
    production environment.
    
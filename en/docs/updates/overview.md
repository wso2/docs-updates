## What is WSO2 Updates?
WSO2 Updates is how WSO2 releases improvements to existing products, on top of a released WSO2 product version. 
With updates, you do not have to wait until the next product version release to get  product enhancements and security fixes. 

<a class="open-modal" data-open="modal1">
    <img src="../../assets/img/updates/update-model.png">
</a>

<div class="modal" id="modal1" data-animation="">
    <div class="modal-dialog">
        <header class="modal-header">
            WSO2 Update Model <button class="close-modal" aria-label="close modal" data-close>✕</button>
        </header>
        <section class="modal-content">
             <img src="../../assets/img/updates/update-model.png">
        </section>
    </div>
</div>

WSO2 delivers improvements to customers in two ways: 

###1.Updates###
        
   **An Update** can be a collection of bug fixes, new features, security fixes, or improvements on an existing product. 
   Updates are delivered through update levels. When an update is applied to a product, the product version goes up by one update level. <br> 
      
###2.Hotfixes###
   
   **A Hotfix** is a bug-specific patch that WSO2 can create for customers-reported bugs. Hotfixes are an immediate fix for a customer-reported issue and will  be applied on an update level. Hotfixes are in the form of a `ZIP file` that 
   needs to be applied on top of the product pack using the update client tool. **All Hotfixes 
   will be included in future updates for all subscribers.**

        
## Why should you use WSO2 Updates?

Continuous maintenance of your WSO2 software ensures a healthy and secure system. There are many specific reasons why you should use WSO2 Updates for your products:

* Eliminate the possibility of wasting time due to a known issue during your evaluation or development.
* Easily deploy updates through WSO2 Updatesas they are packaged for easy deployment into your production systems, ensuring your deployment is solid and secure.
* Update Channels deliver all updates including security updates to fit your project lifecycle.
* Use WSO2 Update Services for WSO2 releases for ten years, enabling you to use bug and security fixes while remaining free to manage your upgrade schedule.
* Let WSO2 carefully monitor hundreds of open source projects, collect and assess security reports from users or academia, run code security reviews, and automate code analysis to identify and address possible security weaknesses.

## How do you get WSO2 updates?

<strong>A WSO2 Subscription is required to use WSO2 updates</strong>. A Subscription can be obtained by following manner:

- Trial Subscription: Provides all the functionality of a subscription for <strong>six months</strong>.

- Paid Subscription: WSO2 Subscription customers receive all updates, including bug fixes, security updates, and product improvements.

Learn more about [WSO2 Subscriptions](https://wso2.com/subscription/)<br>

## When should you use hotfixes?

If you find an issue in your deployment environment, you can raise a ticket at [WSO2 Support](https://support.wso2.com). We can then potentially create a hotfix for your critical issues that has not been addressed in previous updates.

!!! Note 
    You cannot update a product pack that has hotfixes applied. To apply a product pack update, you might first remove all hotfixes.

## When should you use WSO2 Updates?

WSO2 recommends updating frequently to ensure your environments have the latest improvements and  bug fixes. When WSO2 releases security updates, we inform our customers right away. WSO2 recommends applying security updates whenever they are available to ensure the most secure environments possible.

## How do you update your WSO2 products?

The <b>WSO2 Update Tool</b> delivers hotfixes and updates on top of the product pack. The Update Tool is available in each product release distribution and is located in the <code>`<product-home>/bin`</code> directory.

---
template: templates/home-page.html
---

# WSO2 Updates Documentation
We at WSO2 bring a greater, and an improved software solution when we release a product version. With valuable feedback from our users and by proactively searching for enhancements, we constantly improve our products, backport fixes to older affected versions, and push these improvements as updates through the WSO2 Update Process to our valued subscribed users.

<!--
 Adding temporary urls for navigation
-->

<div style="display: flex; flex-wrap: wrap">
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/overview">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                Overview
                <div class="description" style="">
                  A comprehensive insight as to what <strong>WSO2 Updates</strong> are and to know about is component and its structure           
                 </div>
            </div>
        </div>   
    </a>
</div>
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/update-tool">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                Update tool
                <div class="description" style="">
                Set if information about Update tool and how aid in updating in quick and easy manner 
                </div>
            </div>
        </div>
        
    </a>
</div>
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/update-commands">
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
               Update Commands
                <div class="description" style="">
                A constructive approach to perform updates effectively.illustrated here is a set of updates commands that may come in handy. 
                </div>
            </div>
      </a>
</div>
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/resolve-conflics">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                Resolve Conflicts
                <div class="description" style="">
                  A comprehensive guild to use when faced with conflict and helps in resolving conflict effectively.             
                 </div>
            </div>
        </div>   
    </a>   
</div>   
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/best-practices">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                Best Practises
                <div class="description" style="">
                  Guideline activities that make using WSO2 Upadates easier or more effective.             
                 </div>
            </div>
        </div>   
    </a>   
</div>   
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/troubleshoot">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                Troubleshoot
                <div class="description" style="">
                  This section covers troubleshooting issues faced by users when updating             
                 </div>
            </div>
        </div>   
    </a>   
</div>   
<div class="integratorDescription">
    <a style="color: #222222;" href="updates/faq">
        <div>
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 44.9" style="width: 60px;">
                    <path fill="#FF7300" d="M10.2 13h.7l.8 2 .1.4h.5l1.3.6.4.2.4-.1 2-.8.8 1-.7 1.8-.2.4.2.5.6 1.3.1.4.4.2 1.9.8a9.2 9.2 0 010 1.3l-1.9.8-.4.1-.1.5a7 7 0 01-.6 1.3l-.2.4.2.4.7 2-.9.8-1.9-.7-.4-.2-.4.2-1.3.6-.5.1-.1.4-.8 1.9a9.2 9.2 0 01-1.3 0l-.8-1.9-.2-.4-.4-.1a7 7 0 01-1.3-.6l-.5-.2-.4.2-1.9.7-.9-.9.8-1.9.1-.4-.2-.4-.5-1.3-.2-.5-.4-.1L1 23a9.2 9.2 0 010-1.3l1.8-.8.4-.2.2-.4.5-1.3.2-.5-.1-.4-.8-1.9 1-.9 1.8.8.4.1.5-.2 1.3-.5.4-.1.2-.5.8-1.8h.6m0-1H9l-1 2.4a8 8 0 00-1.5.6l-2.4-1c-.8.6-1.4 1.2-2 2l1 2.4a8 8 0 00-.6 1.5L0 21a10.3 10.3 0 000 2.7l2.4 1 .6 1.5-1 2.4c.6.7 1.2 1.3 2 1.9l2.4-1c.4.3 1 .5 1.5.6l1 2.4a10.3 10.3 0 002.7 0l1-2.4a8 8 0 001.5-.6l2.4 1c.7-.6 1.3-1.2 1.9-2l-1-2.3.6-1.5 2.4-1a10.3 10.3 0 000-2.7L18 20a8 8 0 00-.6-1.5l1-2.4c-.6-.8-1.2-1.4-2-2l-2.3 1a8 8 0 00-1.5-.6l-1-2.4h-1.4z"></path><path fill="#FF7300" d="M10.2 18.5a3.8 3.8 0 110 7.7 3.8 3.8 0 010-7.7m0-1a4.8 4.8 0 100 9.7 4.8 4.8 0 000-9.7z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M10.3 9.3v-6c0-1.5 1.3-2.8 2.9-2.8h21.5c1 0 2 .4 2.7 1.1l6 6a4 4 0 011.1 2.8v31a3 3 0 01-3 3H13.2a2.8 2.8 0 01-2.8-2.8V35"></path><ellipse fill="none" stroke="#434343" stroke-miterlimit="10" cx="28.7" cy="6.8" rx="4.1" ry="2.9"></ellipse><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M28.7 9.6v4.7M23.2 35.5h11v4.4h-11z"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M25 18.1l3.7-3.8 3.8 3.8-3.8 3.8z" stroke-width=".99999"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M23.9 26.4h9.6v4.7h-9.6zM28.7 21.9v4.5M28.7 31v4.5"></path><path fill="none" stroke="#434343" stroke-miterlimit="10" d="M32.6 18H38v19.7h-3.8"></path>
                </svg>
            </div>
            <div class="content" style="">
                FAQ
                <div class="description" style="">
                 Discussed here are some commonly asked questions and their answers.              
                 </div>
            </div>
        </div>   
    </a>   
</div>   

## What is the Update Tool?

The Update Tool is a CLI distribution for Linux, MacOS and Windows distributions that streamlines updating WSO2 products. When you run The Update Tool, it will automatically download and install the latest updates for your WSO2 products. It will also take a backup of your current installation before updating it.

If you have not taken updates using WSO2 Updates, we recommend referring the [new user page](../../updates/new-user/) for detailed instructions and information on how to proceed.

!!! tip "Before you begin"
    -   Before you run the Update Tool, **stop the product pack from running**.
    -   If you have symbolic links (also known as symlinks) in the product pack, back up the original files as they could be modified during the update.
    -   The updates commands should be performed in the terminal under the folder path of <strong>`<product-home>/bin`</strong>
    -   You may need to run the relevant update command twice. The first time you execute `./wso2update_<os>`, the Update Tool will update itself. The second time you execute `./wso2update_<os>` will update the product pack. 

!!! important
    The Update Tool is compatible with AMD64 (X86_64) architecture, and there are three separate binaries for Windows, Linux, and MacOS.<br>
    If your runtime environment isn't one of the these options, <strong>we recommend you keep a builder machine, run the Update Tool in the builder machine, and ship the updated packs to your runtime environment.</strong>



### Update Commands for OS

```bash tab='On Linux'
./wso2update_linux 
```

```bash tab='On Mac'
./wso2update_darwin
```

```bash tab='On Windows'
./wso2update_windows.exe
```

There are many features of the WSO2 Updates Tool: 

- The Update Tool updates the customized product distribution while merging the configurations and customized artifacts. 
- The Update Tool has the capability to update itself automatically. If the update tool has been self updated, command 
returns with `exit code 2`.
- The Update Tool takes backups of the current pack before performing updates. These backups are used when reverting the 
pack to the previous state.

Watch our [Webinar on Updates 2.0](https://youtu.be/Z2XeRhzkdpI?t=1050) to witness how you could receive updates with WSO2 Updates 2.0

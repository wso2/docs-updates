To use the **WSO2 Update Tool 2.0**, users must first set up the tool in the product pack. The required setup scripts are bundled with the product pack and located in the `<product-home>/bin` directory.

The script will set up the appropriate Update Tool based on the OS and architecture of the system, provided the product supports the detected system configuration.

!!! note "Notice for Older Product Packs"
    **Setting up the Update Tool is not required if you are using an older product pack.**  
    Update Tool setup scripts are only included in **newer product packs**, as the **older product packs** come with pre-bundled Update Tools (located at `<product-home>/bin/wso2update_<os>`).

### Setup Commands for OS

```bash tab='Linux'
$ ./update_tool_setup.sh
```

```bash tab='MacOS'
$ ./update_tool_setup.sh
```

```console tab='Windows'
$ .\update_tool_setup.ps1
```

Refer to the [Using the Update Tool](../update-tool/) page for more information on how to use the Update Tool after setting it up.

If you run into any issues while setting up the Update Tool, please refer to the [Troubleshooting](../troubleshoot/#troubleshooting-the-update-tool-setup) section for assistance. For more information on using the Update Tool Setup script, refer to the [Update Tool Setup Usage Guide](../update-tool-setup-usage-guide/).

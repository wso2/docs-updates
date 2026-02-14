To use the **WSO2 Update Tool 2.0**, users must first set up the tool in the product pack. The required setup scripts are bundled with the product pack and located in the `<product-home>/bin` directory.

The script will set up the appropriate Update Tool based on the OS and architecture of the system, provided the product supports the detected system configuration.

!!! note
    The following list of products are **ARM64** compatible:

    - Identity Server v7.1.0 (`wso2is-7.1.0`)
    - Micro Integrator v4.4.0 (`wso2mi-4.4.0`)
    - API Manager v4.5.0
        - All-in-one (`wso2am-4.5.0`)
        - API Control Plane (`wso2am-acp-4.5.0`)
        - Universal Gateway (`wso2am-universal-gw-4.5.0`)
        - Traffic Manager (`wso2am-tm-4.5.0`)

    Update Tool setup scripts are only included in Arm compatible product packs, as the older (non-compatible) product packs come with pre-bundled Update Tools (located at `<product-home>/bin/wso2update_<os>`).
    **Hence, setting up the Update Tool is not required if you are using an older product pack.**

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

If you run into any issues while setting up the Update Tool, please refer to the [Troubleshooting](../troubleshoot/#troubleshooting-the-update-tool-setup) section for assistance. For the available options and examples of using the Update Tool Setup script, refer to the [Update Tool Setup Usage Guide](../update-tool-setup-usage-guide/).

See the [Authentication and session persistence](../authentication/) page for details about how the Update Tool manages session tokens and environment-based authentication.

### Options
The following options can be used with the Update Tool setup scripts.

| <div style="width:105px">**MacOS/Linux**</div> | <div style="width:100px">**Windows**</div> |**Description**      |
| --------------- | --------------- | ----------------------------------------------------------------------------- |
| `-h, --help`    | `-h, -Help`     | Displays the help message and exits.                                          |
| `-v, --verbose` | `-v, -Verbose`  | Enable verbose output. This option is useful for debugging purposes.          |
| `-a, --all`     | `-a, -All`      | Fetch all the available Update Tool binaries compatible with the product.     |
| `-c, --clean`   | `-c, -Clean`    | Remove all instances of Update Tool binaries from the product pack.           |
| `--force-clean` | `-ForceClean`   | Forcefully remove all instances of Update Tool binaries from the product pack. (i.e. without user prompt) | 

### Example Usage

1. Set up the Update Tool for the current OS and architecture.

    ```bash tab='Linux'
    $ ./update_tool_setup.sh
    ```

    ```bash tab='MacOS'
    $ ./update_tool_setup.sh
    ```

    ```console tab='Windows'
    $ .\update_tool_setup.ps1
    ```

2. Enable verbose mode and set up the Update Tool for all OSs and architectures supported by the product.

    ```bash tab='Linux'
    $ ./update_tool_setup.sh -v -a
    ```

    ```bash tab='MacOS'
    $ ./update_tool_setup.sh -v -a
    ```

    ```console tab='Windows'
    $ .\update_tool_setup.ps1 -v -a
    ```

3. Remove all instances of Update Tool binaries with user confirmation prompt.

    ```bash tab='Linux'
    $ ./update_tool_setup.sh -c
    ```

    ```bash tab='MacOS'
    $ ./update_tool_setup.sh -c
    ```

    ```console tab='Windows'
    $ .\update_tool_setup.ps1 -c
    ```

4. Forcefully remove all instances of Update Tool binaries without user confirmation prompt.

    ```bash tab='Linux'
    $ ./update_tool_setup.sh --force-clean
    ```

    ```bash tab='MacOS'
    $ ./update_tool_setup.sh --force-clean
    ```

    ```console tab='Windows'
    $ .\update_tool_setup.ps1 -ForceClean
    ```

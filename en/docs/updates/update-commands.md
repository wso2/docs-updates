## Important Updates commands
Shown below is an essential set of update commands that a user require to acquire updates seamlessly.  
 To use below update commands replace the tag **<os\>**  with correct name depending on the operating system.

   * For mac     - `darwin`
   * For linux   - `linux`
   * For windows - `windows`

!!! tip "Before you begin"
    The following commands should be performed in command prompt under the folder path of <strong>`<product-home>/bin`</strong>  

### [wso2update_<os\>]()

   **Synopsis**
    
       wso2update_linux [--version | version] [--help | help]
                        [<options>]
                        <command> [<args>]

   **Description**
 
 wso2update_linux tool is a simple command-line tool that connects to the  WSO2 Update service, determines which updates are new and relevant, thereafter downloads and updates the product. 
 
 You will be prompted to enter WSO2 credentials to initializing the tool. Therefore, you require a WSO2 account to start using the
 update tool. 
        
Need a WSO2 Account? [Sign up](https://wso2.com/user/register)

To find out the latest on WSO2 Update, visit [WSO2 Updates Page](https://wso2.com/updates)


**Options**
 	
 	-l, --level <level>
      	Update the product upto the given level. The provided level
            may or may not contain the product version.

 	-d, --dry-run
      	Simulate the update in a temporary location.

 	-c, --continue
      	Continue the update with merging resolved conflicts.

 	-u, --username
      	Specify your email.

 	-p, --password
      	Specify your password.

        --template string      
        Specify the template output.

 	-v, --verbose
      	Enable verbose mode.

 	-V, --version
      	Prints the Update tool version in use.

 	-h, --help
      	Prints usage details of a command.


**Sub Commands**

Here is a list of available subcommands:


| **Sub commands**  | **Detail**                                                                                       |
|------------------|--------------------------------------------------------------------------------------------------|
|   check          |      Check available new levels for the product<br>                                              |
|   current-state  |      Show current details of the product                                                         |
|   apply-hotfix   |      Apply an available hotfix                                                                   |
|   revert-hotfix  |      Revert the most recently applied hotfix                                                     |
|   version        |      Print Update tool version                                                                   |  
|   help           |      Prints usage details of a command                                                           |

**Exit Codes**

Here is a list of exit codes:

| **Exit Code**  | **Detail**                                                                                       |
|----------------|--------------------------------------------------------------------------------------------------|
|  0             | Operation Successful                                                                             |
|  1             | Default error                                                                                    |
|  2             | Self Update                                                                                      |
|  3             | Conflict(s) encountered                                                                          |
|  4             | Reverted                                                                                         |

**Examples**

* Check the current version of Update tool in use on your system
``` bash
wso2update_linux --version
```

* Get help on how to use the update command
``` bash
wso2update_linux help check
```

* Update the product to the latest level. You will be prompted to enter WSO2 credentials.
``` xml
wso2update_linux
Username: user@wso2.com
Password for ‘user@wso2.com’: my_password
```

* Update the product to the latest level by entering WSO2 credentials as arguments.
``` bash
wso2update_linux --username user@wso2.com --password my_password
```

* Use templating to obtain output specific to the type of information that is required. 
``` bash
wso2update_linux --template Added: {{.Added}}, Modified: {{.Modified}}, Removed: {{.Removed}}
```

* Update the product up to a given level
``` bash
wso2update_linux --level 3.0.0.10
```

* Simulate the update 
``` bash
wso2update_linux --dry-run
```

### [wso2update_<os\> help]()

**Synopsis**
 	
 	wso2update_linux help [command] [options]

**Description**
 
Help provides help for any command in the tool.	
If Help command is applied with no options and no command, the synopsis of the update command and a list of updates are printed.
If a command is given, full details for that command is brought up.

!!! Note 
    `wso2update_linux -h` and `wso2update_linux –-help` commands are identical to `wso2update_linux help`.

**Options**
 	
 	-v, --verbose
          	Enable verbose mode.

**Examples**

* Get help on how to use the check command
   	   
   	    wso2update_linux help check


### [wso2update_<os\> version]()

**Synopsis**
 	
 	wso2update_linux version [options]

**Description**
 
Version command prints the Update tool distribution version information such as Update tool version, release date, 
operating system, architecture and Go version.

**Options**
	
 	 	-v, --verbose
          	Enable verbose mode.
    
     	--default-template
          	Get the default template output.
    
     	--template {{.<output_mode>}}
          	Specify the template output mode (UpdateVersion, ReleaseDate, OS, 
                Architecture, GoVersion).

**Examples**

* Get update tool version information in the default template
   	   
   	        wso2update_linux version --default-template
  
* Get release date information in template mode
   	   
   	        wso2update_linux version --template {{.ReleaseDate}}

### [wso2update_<os\> check]()

**Synopsis**
 	
 	wso2update_linux version [options]

**Description**
 
Checks the availability of new levels for the product.

Check command detects available new levels for the product and prints the findings.

**Options**
 	
 	-v, --verbose
      	Enable verbose mode.

 	--default-template
      	Get the default template output.

 	--template {{.<output_mode>}}
      	Specify the template output mode (AllUpdates, ProductList).

**Examples**

Check new levels
 	   
 	    wso2update_linux check

Check new levels in template mode
 	   
 	    wso2update_linux check --template {{.AllUpdates}}

### [wso2update_<os\> current-state]()

**Synopsis**
 	
 	wso2update_linux current-state [options]

**Description**
 
Show current state details of the product.

Current-state command prints the current details of the product. This command retrieves and shows the current level and add hotfixes to the product.

**Options**
 	
    -v, --verbose
      	Enable verbose mode.

**Examples**

Get the current status of the product
 	   
 	    wso2update_linux current-state

### [wso2update_<os\> apply-hotfix]()

**Synopsis**
 	
 	wso2update_linux apply-hotfix [options] <path-to-hotfix>
                  
 
**Description**

Apply an available hotfix.

Apply-hotfix command applies available hotfix to the product distribution. This path should be pointed to a `.zip`
file that contains a WSO2 provided hotfix.


!!! Note 
    That a Hotfix cannot be applied when an update is take immidiately before taking a Hotfix. 

**Options**

 	-v, --verbose
      	Enable verbose mode.


**Examples**

Apply a hotfix to the product
 	   
 	   wso2update_linux apply-hotfix wso2am-3.0.0-abc-hf1.zip

### [wso2update_<os\> revert-hotfix]()

**Name**
 	
 	wso2update_linux revert-hotfix - Revert most recently applied hotfix.

**Synopsis**

 	wso2update_linux revert-hotfix [options]                  
 
**Description**

Revert-hotfix command reverts most recently applied hotfix to the product distribution. 


**Options**

 	-v, --verbose
      	Enable verbose mode.

**Examples**

Revert the previously applied hotfix
 	   
 	   wso2update_linux revert-hotfix

### [wso2update_<os\> create-docker]()

`create-docker` is used to build a docker image of the product, which will be created along with the applied updates and hotfixes, that will be run in a test environment
prior to applying the same to a production environment.

**Synopsis**

            wso2update_linux create-docker [flags]

**Examples**

            wso2update_linux create-docker [flags]

**Options**

    -h, --help                help for create-docker
    --os string               Base OS of the Docker image (default "alpine")
    -p, --password string     Specify your WSO2 account password
    -t, --tag string          Value the created image should be tagged with (default "alpine")

    --trial-subscription      Continue with a trial subscription
    -u, --username string     Specify your WSO2 account email

    Global Flags:
        -v, --verbose         Enable verbose mode

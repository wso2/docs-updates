## What is the Update Tool?

Update tool is a CLI distribution that is separate for Linux, MacOS and Windows distributions. Bringing your product up to date 
with the Update Tool is very easy.It is as simple as running one of the commands that matches with your Operating System.
### Update Commands for OS

```bash tab='On Linux'
wso2update_linux 
```

```bash tab='On Mac'
wso2update_darwin
```

```bash tab='On Windows'
wso2update_windows.exe
```

There are myriad of features of the WSO2 Updates Tool. Following describe the features briefly: 

- Update tool updates the customized product distribution while merging the configurations and customized artifacts. 
- Update tool has the capability to update itself automatically. If the update tool has been self updated, command 
returns with `exit code 2`
- Update tool takes backups of the current pack before performing updates. These backups are used when reverting the 
pack to the previous state.

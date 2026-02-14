## How Authentication Works in the Update Tool

You require a WSO2 account to start using the update tool.
Need a WSO2 Account? [Sign up](https://wso2.com/user/register)

The Update Tool stores session tokens in your shell's environment (environment variables) for the duration of that shell session. It does not write session tokens to disk. Tokens are available to subsequent commands in the same shell session and any child processes, but they are not preserved across new shell sessions.

### Authentication Priority

When a command is executed, the tool resolves credentials using the following hierarchy. The tool uses the first available method it finds:

| Priority | Method                    | Details                                                                                                       |
| :------- | :------------------------ | :------------------------------------------------------------------------------------------------------------ |
| **1**    | **CLI Flags**             | `--username` and `--password` flags passed directly.                                                          |
| **2**    | **Environment Variables** | `UPDATE_TOOL_USERNAME` and `UPDATE_TOOL_PASSWORD`.                                                            |
| **3**    | **Active Session**        | Reuse session environment variables: `SESSION_USERNAME`, `SESSION_ACCESS_TOKEN`, and `SESSION_REFRESH_TOKEN`. |
| **4**    | **Interactive**           | Triggers a prompt for manual login.                                                                           |

---

### CI/CD and Automation

For non-interactive environments such as GitHub Actions, Jenkins, or GitLab CI, export the following environment variables to prevent the tool from hanging on an interactive prompt:

```bash
export UPDATE_TOOL_USERNAME="The username you used to access WSO2 Updates"
export UPDATE_TOOL_PASSWORD="The password of the user"
```

To explicitly clear the session from your environment, unset the session environment variables before running the tool again, for example:

```bash tab='Linux'
unset SESSION_ACCESS_TOKEN SESSION_REFRESH_TOKEN SESSION_USERNAME
```

```bash tab='MacOS'
unset SESSION_ACCESS_TOKEN SESSION_REFRESH_TOKEN SESSION_USERNAME
```

```powershell tab='Windows'
Remove-Item Env:SESSION_ACCESS_TOKEN
Remove-Item Env:SESSION_REFRESH_TOKEN
Remove-Item Env:SESSION_USERNAME
```

!!! IMPORTANT
    Session tokens are stored in the environment for user convenience. Always treat session tokens as sensitive credentials. Avoid sharing tokens and rotate credentials if a token is compromised.

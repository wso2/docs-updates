## How Authentication Works in the Update Tool

You require a WSO2 account to use the Update Tool.
Need a WSO2 Account? [Sign up](https://wso2.com/user/register)

---

### Authentication Priority

When a command is executed, the tool resolves credentials using the following hierarchy. The first available method is used:

| Priority | Method                    | Details                                                                     |
| -------- | ------------------------- | --------------------------------------------------------------------------- |
| **1**    | **CLI Flags**             | `--username` and `--password` flags passed directly via the terminal.       |
| **2**    | **Environment Variables** | `UPDATE_TOOL_USERNAME` and `UPDATE_TOOL_PASSWORD` set in the shell session. |
| **3**    | **Interactive**           | Prompts the user for credentials.                                           |

---

### Session Lifecycle

Authentication is performed once per command invocation — your credentials are exchanged for a short-lived token. For security, tokens are stored in the session environment, never written to disk, and are inaccessible to your parent shell or any process outside the Update Tool. The moment the command exits, the token is discarded and the session environment is cleared. No credentials or session state persist between invocations.

---

### CI/CD and Automation

For non-interactive environments such as GitHub Actions, Jenkins, or GitLab CI, set the following environment variables before invoking the tool:

Example:

```bash
export UPDATE_TOOL_USERNAME="user@wso2.com"
export UPDATE_TOOL_PASSWORD="my_password"
```

Without these, the tool will attempt to open an interactive prompt, which will hang in a headless pipeline.

!!! IMPORTANT
    Always treat your WSO2 credentials as sensitive data. Avoid hardcoding them in scripts or configuration files. For automated environments, store them as **Secrets** in your CI/CD platform and inject them at runtime. Rotate credentials immediately if an environment is compromised.

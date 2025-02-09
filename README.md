# dev-container-test

A minimal reproduction repository demonstrating an issue with VS Code Dev Container extension installation in the context of Cursor.

## Issue Description

In Cursor, the VS Code Dev Container is not installing the specified extension `bs-code.git-quick-stage` despite it being correctly defined in the `devcontainer.json` configuration file.

### Expected Behavior

In Cursor and in VS Code, when rebuilding the Dev Container, the extension `bs-code.git-quick-stage` should be automatically installed as specified in the `devcontainer.json` file.

### Actual Behavior

In VS Code, the extension is found and installed.

In Cursor, the extension is not installed when the container is built, despite being correctly specified in the configuration. Log Signature: 
```
[9399 ms] [10:05:14] Extension 'bs-code.git-quick-stage' not found.
Make sure you use the full extension ID, including the publisher, e.g.: ms-dotnettools.csharp
```

## Steps to Reproduce

1. Clone this repository
2. Open in VS Code
3. When prompted, click "Reopen in Container" (or run Command Palette > "Dev Containers: Reopen in Container")
4. Observe that the `Git Quick Stage` extension is not installed in the container

## Environment

- VS Code Version: Cursor with VS Code 1.96.2 not working, VS Code 1.96.4 working
- Dev Containers Extension Version: [Your Dev Containers extension version]
- Using Default VS Code Profile
- Operating System: MacOS 15.2

## Relevant Configuration

The `devcontainer.json` configuration includes:

~~~json
{
    "name": "Test Dev Container for node",
    "dockerComposeFile": "../docker-compose.yml",
    "service": "node",
    "workspaceFolder": "/app",
    "shutdownAction": "stopCompose",
    "customizations": {
      "vscode": {
        "extensions": [
          "bs-code.git-quick-stage",
          "ms-azuretools.vscode-docker"
        ]
      }
    }
}
~~~

## Additional Notes

- The extension ID `bs-code.git-quick-stage` has been verified as correct against the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=bs-code.git-quick-stage)
- The issue persists across container rebuilds
- Other extensions (like `ms-azuretools.vscode-docker`) install correctly

## Detailed Logs for Diffing
See the full logs for comparison:
- [Cursor logs showing extension not found](./install-log-cursor-extension-not-found.md)
- [VS Code logs showing successful installation](./install-log-vs-code-success.md)

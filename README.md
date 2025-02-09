# dev-container-test

A minimal reproduction repository demonstrating an issue with VS Code Dev Container extension installation.

## Issue Description

The VS Code Dev Container is not installing the specified extension `bs-code.git-quick-stage` despite it being correctly defined in the `devcontainer.json` configuration file.

### Expected Behavior

When rebuilding the Dev Container, the extension `bs-code.git-quick-stage` should be automatically installed as specified in the `devcontainer.json` file.

### Actual Behavior

The extension is not installed when the container is built, despite being correctly specified in the configuration. Log Signature: 
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

- VS Code Version: VS Code 1.96.2
- Dev Containers Extension Version: [Your Dev Containers extension version]
- Using Default VS Code Profile
- Operating System: [Your OS]

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

## Relevant Logs
```
[17 ms] Dev Containers 0.394.0 in VS Code 1.96.2 (f5f18731406b73244e0558ee7716d77c8096d150).
[17 ms] Start: Resolving Remote
[24 ms] Setting up container for folder or workspace: /Users/Me/Documents/GitHub/dev-container-test
[24 ms] Context: desktop-linux
[39 ms] Start: Check Docker is running
[39 ms] Start: Run: docker version
[62 ms] Client:
[62 ms]  Version:           27.5.1
 API version:       1.47
 Go version:        go1.22.11
 Git commit:        9f9e405
 Built:             Wed Jan 22 13:37:19 2025
 OS/Arch:           darwin/arm64
 Context:           desktop-linux

Server: Docker Desktop 4.38.0 (181591)
 Engine:
  Version:          27.5.1
  API version:      1.47 (minimum version 1.24)
  Go version:       go1.22.11
  Git commit:       4c9b3b0
  Built:            Wed Jan 22 13:41:25 2025
  OS/Arch:          linux/arm64
  Experimental:     false
 containerd:
  Version:          1.7.25
  GitCommit:        bcc810d6b9066471b0b6fa75f557a15a1cbf31bb
 runc:
  Version:          1.1.12
  GitCommit:        v1.1.12-0-g51d5e946
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
[166 ms] Start: Run: docker volume ls -q
[290 ms] Start: Run: docker inspect --type container 751bff0e23762f9b45b89a1a1e4f5ecbcd58fd189354d7950292e393c8ebede8
[415 ms] Start: Run: docker ps -q -a --filter label=vsch.local.folder=/Users/Me/Documents/GitHub/dev-container-test --filter label=vsch.quality=stable
[550 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --filter label=devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json
[686 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test
[819 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test
[949 ms] Running Dev Containers CLI:   up --user-data-folder /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data --container-session-data-folder /tmp/devcontainers-47e1175a-b546-4edf-b609-a230fb68b4681739095504084 --workspace-folder /Users/Me/Documents/GitHub/dev-container-test --workspace-mount-consistency cached --gpu-availability detect --id-label devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --id-label devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --log-level debug --log-format json --config /Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --default-user-env-probe loginInteractiveShell --build-no-cache --mount type=volume,source=vscode,target=/vscode,external=true --skip-post-create --update-remote-user-uid-default on --mount-workspace-git-root --include-configuration --include-merged-configuration
[973 ms] ProxyResolver#loadSystemCertificates count
[974 ms] ProxyResolver#loadSystemCertificates count filtered
[974 ms] Start: Run: /Applications/Cursor.app/Contents/Frameworks/Cursor Helper (Plugin).app/Contents/MacOS/Cursor Helper (Plugin) /Users/Me/.cursor/extensions/ms-vscode-remote.remote-containers-0.394.0/dist/spec-node/devContainersSpecCLI.js up --user-data-folder /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data --container-session-data-folder /tmp/devcontainers-47e1175a-b546-4edf-b609-a230fb68b4681739095504084 --workspace-folder /Users/Me/Documents/GitHub/dev-container-test --workspace-mount-consistency cached --gpu-availability detect --id-label devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --id-label devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --log-level debug --log-format json --config /Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --default-user-env-probe loginInteractiveShell --build-no-cache --mount type=volume,source=vscode,target=/vscode,external=true --skip-post-create --update-remote-user-uid-default on --mount-workspace-git-root --include-configuration --include-merged-configuration
[1122 ms] @devcontainers/cli 0.72.0. Node.js v20.18.1. darwin 24.2.0 arm64.
[1122 ms] Start: Run: docker buildx version
[1578 ms] github.com/docker/buildx v0.20.1-desktop.2 aaf7c2bc7f9ec3afee1cec77d671845a4b57a0c8
[1579 ms] 
[1579 ms] Start: Run: docker -v
[1647 ms] Start: Resolving Remote
[1650 ms] Loading 12 extra certificates from /var/folders/23/nn4j7__55mx52mgqjcdxx0vc0000gn/T/vsch/certificates-9c48ad3fa8eb5482b85d6b3fcc1b6fe175a1d05d0343f738f86eb463d97d487e.pem.
[1887 ms] Start: Run: docker compose version --short
[2066 ms] Docker Compose version: 2.32.4-desktop.1
[2066 ms] Start: Run: docker compose -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml --profile * config
[2343 ms] name: dev-container-test
services:
  node:
    build:
      context: /Users/Me/Documents/GitHub/dev-container-test
      dockerfile: Dockerfile
    networks:
      default: null
    stdin_open: true
    tty: true
    volumes:
      - type: bind
        source: /Users/Me/Documents/GitHub/dev-container-test
        target: /app
        bind:
          create_host_path: true
      - type: volume
        source: app_node_modules
        target: /app/node_modules
        volume: {}
      - type: bind
        source: /Users/Me/.pnpm-store
        target: /pnpm-store
        bind:
          create_host_path: true
networks:
  default:
    name: dev-container-test_default
volumes:
  app_node_modules:
    name: dev-container-test_app_node_modules
[2346 ms] Start: Run: docker ps -q -a --filter label=com.docker.compose.project=dev-container-test --filter label=com.docker.compose.service=node
[2471 ms] Start: Run: docker events --format {{json .}} --filter event=start
[2473 ms] PersistedPath=/Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data, ContainerHasLabels=false
[2473 ms] Start: Run: docker compose -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml --profile * config
[2748 ms] name: dev-container-test
services:
  node:
    build:
      context: /Users/Me/Documents/GitHub/dev-container-test
      dockerfile: Dockerfile
    networks:
      default: null
    stdin_open: true
    tty: true
    volumes:
      - type: bind
        source: /Users/Me/Documents/GitHub/dev-container-test
        target: /app
        bind:
          create_host_path: true
      - type: volume
        source: app_node_modules
        target: /app/node_modules
        volume: {}
      - type: bind
        source: /Users/Me/.pnpm-store
        target: /pnpm-store
        bind:
          create_host_path: true
networks:
  default:
    name: dev-container-test_default
volumes:
  app_node_modules:
    name: dev-container-test_app_node_modules
[2749 ms] Start: Run: docker inspect --type image mcr.microsoft.com/vscode/devcontainers/typescript-node:1-22-bookworm
[2878 ms] Docker Compose override file for building image:
services:
  node:
    build:
      dockerfile: /var/folders/23/nn4j7__55mx52mgqjcdxx0vc0000gn/T/devcontainercli/container-features/0.72.0-1739095507811/Dockerfile-with-features
      args:
        - BUILDKIT_INLINE_CACHE=1
        - _DEV_CONTAINERS_BASE_IMAGE=base

[2879 ms] Start: Run: docker compose --project-name dev-container-test -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml -f /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.build-1739095507815.yml build --no-cache
[+] Building 2.5s (12/15)                                  docker:desktop-linux
[+] Building 2.7s (12/15)                                  docker:desktop-linux
[+] Building 2.7s (13/15)                                  docker:desktop-linux
[+] Building 2.8s (13/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
[+] Building 3.0s (13/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
[+] Building 3.1s (14/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
[+] Building 3.3s (14/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s 
[+] Building 3.3s (14/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
[+] Building 3.4s (15/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
[+] Building 3.5s (15/16)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
 => [node internal] load metadata for mcr.microsoft.com/vscode/devcontain  0.0s
 => [node internal] load .dockerignore                                     0.0s
[+] Building 3.6s (17/17) FINISHED                         docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
 => [node internal] load metadata for mcr.microsoft.com/vscode/devcontain  0.0s
 => [node internal] load .dockerignore                                     0.0s
 => => transferring context: 2B                                            0.0s
 => CACHED [node base  1/11] FROM mcr.microsoft.com/vscode/devcontainers/  0.0s
 => [node internal] load build context                                     0.0s
 => => transferring context: 34.02kB                                       0.0s
 => [node base  2/11] RUN mkdir -p "/pnpm" && chmod 777 "/pnpm"            0.2s 
 => [node base  3/11] RUN npm install -g corepack@latest --force           0.6s
 => [node base  4/11] RUN corepack enable && corepack prepare pnpm@10.2.1  1.0s
 => [node base  5/11] RUN corepack enable pnpm                             0.1s
 => [node base  6/11] COPY . /app                                          0.0s
 => [node base  7/11] WORKDIR /app                                         0.0s
 => [node base  8/11] COPY . .                                             0.4s
 => [node base  9/11] RUN pnpm config set store-dir /pnpm-store            0.3s
 => [node base 10/11] RUN yes | pnpm --version                             0.3s
 => [node base 11/11] RUN pnpm install                                     0.4s
 => [node] exporting to image                                              0.1s
 => => exporting layers                                                    0.1s
 => => preparing layers for inline cache                                   0.0s
 => => writing image sha256:a781b512abc8551c6c24e4f883cfc1d7f2d1a0d32d9a2  0.0s
 => => naming to docker.io/library/dev-container-test-node                 0.0s
 => [node] resolving provenance for metadata file                          0.0s
[+] Building 1/1
 ✔ node  Built                                                             0.0s 
[6879 ms] Start: Run: docker inspect --type image dev-container-test-node
[7019 ms] Docker Compose override file for creating container:
services:
  'node':
    entrypoint: ["/bin/sh", "-c", "echo Container started\n
trap \"exit 0\" 15\n
\n
exec \"$$@\"\n
while sleep 1 & wait $$!; do :; done", "-", "docker-entrypoint.sh"]
    command: ["/bin/sh","-c","pnpm dev"]
    labels:
      - 'devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test'
      - 'devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json'
    volumes:
      - vscode:/vscode
volumes:
  
  vscode:
    external: true
[7019 ms] Writing docker-compose.devcontainer.containerFeatures-1739095511956-3e8dd79c-f856-4cda-aaae-33306fedd1dd.yml to /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose
[7020 ms] Start: Run: docker compose --project-name dev-container-test -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml -f /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.build-1739095507815.yml -f /Users/Me/Library/Application Support/Cursor/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.containerFeatures-1739095511956-3e8dd79c-f856-4cda-aaae-33306fedd1dd.yml up -d
[+] Running 1/1
 ✔ Container dev-container-test-node-1  Started                            0.2s 
[7505 ms] Start: Run: docker ps -q -a --filter label=com.docker.compose.project=dev-container-test --filter label=com.docker.compose.service=node
[7624 ms] Start: Run: docker inspect --type container 69859a9fc224
[7762 ms] Start: Inspecting container
[7762 ms] Start: Run: docker inspect --type container 69859a9fc22402298ce0e6da987c06adfa0f7e7ce7b270aee5fb82b69d27038d
[7904 ms] Start: Run in container: /bin/sh
[7908 ms] Start: Run in container: uname -m
[7986 ms] aarch64
[7986 ms] 
[7986 ms] Start: Run in container: (cat /etc/os-release || cat /usr/lib/os-release) 2>/dev/null
[7988 ms] PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
[7988 ms] 
[7988 ms] Start: Run in container:  (command -v getent >/dev/null 2>&1 && getent passwd 'node' || grep -E '^node|^[^:]*:[^:]*:node:' /etc/passwd || true)
[7991 ms] Start: Run in container: test -f '/var/devcontainer/.patchEtcEnvironmentMarker'
[7992 ms] 
[7992 ms] 
[7992 ms] Exit code 1
[7992 ms] Start: Run in container: /bin/sh
[7994 ms] Start: Run in container: test ! -f '/var/devcontainer/.patchEtcEnvironmentMarker' && set -o noclobber && mkdir -p '/var/devcontainer' && { > '/var/devcontainer/.patchEtcEnvironmentMarker' ; } 2> /dev/null
[8059 ms] 
[8059 ms] 
[8059 ms] Start: Run in container: cat >> /etc/environment <<'etcEnvrionmentEOF'
[8062 ms] 
[8062 ms] 
[8062 ms] Start: Run in container: test -f '/var/devcontainer/.patchEtcProfileMarker'
[8063 ms] 
[8063 ms] 
[8063 ms] Exit code 1
[8063 ms] Start: Run in container: test ! -f '/var/devcontainer/.patchEtcProfileMarker' && set -o noclobber && mkdir -p '/var/devcontainer' && { > '/var/devcontainer/.patchEtcProfileMarker' ; } 2> /dev/null
[8065 ms] 
[8065 ms] 
[8065 ms] Start: Run in container: sed -i -E 's/((^|\s)PATH=)([^\$]*)$/\1${PATH:-\3}/g' /etc/profile || true
[8066 ms] 
[8066 ms] 
[8075 ms] Start: Run: docker inspect --type container 69859a9fc22402298ce0e6da987c06adfa0f7e7ce7b270aee5fb82b69d27038d
[8196 ms] Start: Run: docker exec -i -u root 69859a9fc22402298ce0e6da987c06adfa0f7e7ce7b270aee5fb82b69d27038d /bin/sh -c echo "New container started. Keep-alive process started." ; export VSCODE_REMOTE_CONTAINERS_SESSION=47e1175a-b546-4edf-b609-a230fb68b4681739095504084 ; /bin/sh
[8199 ms] Start: Inspecting container
[8200 ms] Start: Run: docker inspect --type container 69859a9fc22402298ce0e6da987c06adfa0f7e7ce7b270aee5fb82b69d27038d
[8263 ms] New container started. Keep-alive process started.
[8327 ms] Start: Run in container: /bin/sh
[8328 ms] Start: Run in container: uname -m
[8391 ms] aarch64
[8392 ms] 
[8392 ms] Start: Run in container: (cat /etc/os-release || cat /usr/lib/os-release) 2>/dev/null
[8393 ms] PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
[8393 ms] 
[8394 ms] Start: Run in container:  (command -v getent >/dev/null 2>&1 && getent passwd 'node' || grep -E '^node|^[^:]*:[^:]*:node:' /etc/passwd || true)
[8396 ms] Start: Run in container: command -v git >/dev/null 2>&1 && ROOT_FOLDER="$(git -C '/app' rev-parse --show-toplevel)" && test "$(stat -c %u "$ROOT_FOLDER")" != "$(id -u)" && echo -n "$ROOT_FOLDER"
[8401 ms] 
[8401 ms] 
[8401 ms] Exit code 1
[8402 ms] Start: Updating configuration state
[8406 ms] Start: Run: docker compose version --short
[8510 ms] Docker Compose version: 2.32.4-desktop.1
[8510 ms] Start: Setup shutdown monitor
[8511 ms] Forking shutdown monitor: /Users/Me/.cursor/extensions/ms-vscode-remote.remote-containers-0.394.0/dist/shutdown/shutdownMonitorProcess /var/folders/23/nn4j7__55mx52mgqjcdxx0vc0000gn/T/vscode-remote-containers-388ea8e5-26ae-417c-9371-b842a4e175fb.sock dockerCompose Debug /Users/Me/Library/Application Support/Cursor/logs/20250208T115420/window3/exthost/ms-vscode-remote.remote-containers 1739095504937
[8513 ms] Start: Run in container: test -d '/home/node/.cursor-server'
[8515 ms] 
[8515 ms] 
[8515 ms] Exit code 1
[8515 ms] Start: Run in container: test -d '/home/node/.vscode-remote'
[8517 ms] 
[8517 ms] 
[8517 ms] Exit code 1
[8517 ms] Start: Run in container: test ! -f '/home/node/.cursor-server/data/Machine/.writeMachineSettingsMarker' && set -o noclobber && mkdir -p '/home/node/.cursor-server/data/Machine' && { > '/home/node/.cursor-server/data/Machine/.writeMachineSettingsMarker' ; } 2> /dev/null
[8524 ms] 
[8524 ms] 
[8524 ms] Start: Run in container: cat /home/node/.cursor-server/data/Machine/settings.json
[8526 ms] 
[8526 ms] cat: /home/node/.cursor-server/data/Machine/settings.json: No such file or directory
[8526 ms] Exit code 1
[8527 ms] 
Support for ARM64 is in preview.

[8527 ms] Start: Run in container: test -d '/home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150'
[8528 ms] 
[8528 ms] 
[8528 ms] Exit code 1
[8528 ms] Start: Run in container: test -d '/vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150'
[8529 ms] 
[8529 ms] 
[8529 ms] Start: Run in container: mkdir -p '/home/node/.cursor-server/bin' && ln -snf '/vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150' '/home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150'
[8532 ms] 
[8532 ms] 
[8532 ms] Start: Run in container: /bin/sh
[8533 ms] Start: Run in container: test -x '/home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/bin/helpers/check-requirements.sh'
[8533 ms] Start: Run in container: touch '/vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150'
[8534 ms] 
[8534 ms] 
[8534 ms] Start: Run in container: '/home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/bin/helpers/check-requirements.sh'
[8535 ms] !!! WARNING: Using legacy server, please check https://aka.ms/vscode-remote/faq/old-linux for additional information !!!
[8535 ms] 
[8536 ms] Start: Launching Dev Containers helper.
[8536 ms] ssh-agent: SSH_AUTH_SOCK in container (/tmp/vscode-ssh-auth-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.sock) forwarded to local host (/private/tmp/com.apple.launchd.lSY4LEOhWc/Listeners).
[8536 ms] X11 forwarding: DISPLAY not set on local host.
[8536 ms] Start: Run in container: gpgconf --list-dirs
[8538 ms] sysconfdir:/etc/gnupg
bindir:/usr/bin
libexecdir:/usr/lib/gnupg
libdir:/usr/lib/aarch64-linux-gnu/gnupg
datadir:/usr/share/gnupg
localedir:/usr/share/locale
socketdir:/home/node/.gnupg
dirmngr-socket:/home/node/.gnupg/S.dirmngr
agent-ssh-socket:/home/node/.gnupg/S.gpg-agent.ssh
agent-extra-socket:/home/node/.gnupg/S.gpg-agent.extra
agent-browser-socket:/home/node/.gnupg/S.gpg-agent.browser
agent-socket:/home/node/.gnupg/S.gpg-agent
homedir:/home/node/.gnupg
[8538 ms] 
[8538 ms] Start: Run in container: ls '/home/node/.gnupg/private-keys-v1.d' 2>/dev/null
[8539 ms] 
[8539 ms] 
[8539 ms] Exit code 2
[8539 ms] Start: Run: gpgconf --list-dirs
[8542 ms] spawn gpgconf ENOENT
[8542 ms] gpg-agent: No agent-extra-socket found on local host.
[8542 ms] Start: Run in container: (command -v 'docker' || command -v 'oras' || command -v 'skopeo') >/dev/null 2>&1
[8543 ms] 
[8543 ms] 
[8543 ms] Exit code 127
[8543 ms] Start: Run in container: /bin/sh
[8544 ms] userEnvProbe: loginInteractiveShell (default)
[8544 ms] Start: Run in container: test -f '/tmp/devcontainers-47e1175a-b546-4edf-b609-a230fb68b4681739095504084/env-loginInteractiveShell.json'
[8544 ms] Start: Run in container: echo ~
[8546 ms] 
[8546 ms] 
[8546 ms] Exit code 1
[8546 ms] Start: Run in container: # Test for /home/node/.ssh/known_hosts and ssh
[8546 ms] userEnvProbe: not found in cache
[8546 ms] userEnvProbe shell: /bin/bash
[8547 ms] 
[8547 ms] 
[8547 ms] Start: Run in container: # Copy /Users/Me/.ssh/known_hosts to /home/node/.ssh/known_hosts
[8549 ms] 
[8549 ms] 
[8597 ms] /home/node
[8597 ms] 
[8597 ms] Start: Run in container: cat <<'EOF-/tmp/vscode-remote-containers-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js' >/tmp/vscode-remote-containers-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js
[8597 ms] 
[8597 ms] 
[8597 ms] Start: Run in container: command -v git >/dev/null 2>&1 && git config --system --replace-all credential.helper '!f() { /home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/node /tmp/vscode-remote-containers-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js git-credential-helper $*; }; f' || true
[8599 ms] 
[8599 ms] 
[8599 ms] Start: Run in container: cat <<'EOF-/tmp/vscode-remote-containers-server-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js' >/tmp/vscode-remote-containers-server-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js_1739095513536
[8600 ms] 
[8600 ms] 
[8600 ms] Start: Run in container: for pid in `cd /proc && ls -d [0-9]*`; do { echo $pid ; readlink /proc/$pid/cwd || echo ; readlink /proc/$pid/ns/mnt || echo ; cat /proc/$pid/stat | tr "
[8609 ms] 
[8609 ms] 
[8618 ms] Start: Run in container: cat '/home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/product.json'
[8620 ms] Start: Run in container: cat '/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150' 2>/dev/null || (umask 377 && echo 'a6810074-758f-4d93-9e38-2af99b664a48' >'/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150-68eed51a-9acb-438d-b46c-0b4d05a1d216' && mv -n '/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150-68eed51a-9acb-438d-b46c-0b4d05a1d216' '/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150' && rm -f '/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150-68eed51a-9acb-438d-b46c-0b4d05a1d216' && cat '/home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150')
[8622 ms] a6810074-758f-4d93-9e38-2af99b664a48
[8622 ms] 
[8622 ms] Start: Starting VS Code Server
[8622 ms] Start: Preparing Extensions
[8622 ms] Start: Run in container: test ! -f '/home/node/.cursor-server/data/Machine/.installExtensionsMarker' && set -o noclobber && mkdir -p '/home/node/.cursor-server/data/Machine' && { > '/home/node/.cursor-server/data/Machine/.installExtensionsMarker' ; } 2> /dev/null
[8623 ms] 
[8623 ms] 
[8624 ms] Extensions cache, install extensions: dbaeumer.vscode-eslint, bs-code.git-quick-stage, ms-azuretools.vscode-docker, GitHub.vscode-pull-request-github
[8624 ms] Start: Run in container: test -d /home/node/.cursor-server/extensionsCache && ls /home/node/.cursor-server/extensionsCache || true
[8625 ms] 
[8625 ms] 
[8625 ms] Start: Run in container: test -d /vscode/cursor-server/extensionsCache && ls /vscode/cursor-server/extensionsCache || true
[8625 ms] 
[8625 ms] 
[8625 ms] Extensions cache, link in container: None
[8626 ms] Start: Run in container: /home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/bin/cursor-server --log debug --force-disable-user-env --server-data-dir /home/node/.cursor-server --use-host-proxy --telemetry-level all --accept-server-license-terms --host 127.0.0.1 --port 0 --connection-token-file /home/node/.cursor-server/data/Machine/.connection-token-f5f18731406b73244e0558ee7716d77c8096d150 --extensions-download-dir /home/node/.cursor-server/extensionsCache --install-extension dbaeumer.vscode-eslint --install-extension bs-code.git-quick-stage --install-extension ms-azuretools.vscode-docker --install-extension GitHub.vscode-pull-request-github --start-server --disable-websocket-compression --skip-requirements-check
[8672 ms] userEnvProbe PATHs:
Probe:     '/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/pnpm:/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/node/.local/bin'
Container: '/pnpm:/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
[8672 ms] Start: Run in container: mkdir -p '/tmp/devcontainers-47e1175a-b546-4edf-b609-a230fb68b4681739095504084' && cat > '/tmp/devcontainers-47e1175a-b546-4edf-b609-a230fb68b4681739095504084/env-loginInteractiveShell.json' << 'envJSON'
[8674 ms] 
[8674 ms] 
[8724 ms] Server bound to 127.0.0.1:44387 (IPv4)
Extension host agent listening on 44387

[8724 ms] Start: Run in container: echo 44387 >'/home/node/.cursor-server/data/Machine/.devport-f5f18731406b73244e0558ee7716d77c8096d150'
[8725 ms] 
[8725 ms] 
[8725 ms] Port forwarding for container port 44387 starts listening on local port.
[8725 ms] Port forwarding local port 44387 to container port 44387
[8728 ms] Initializing configuration support...
[8728 ms] Internal initialization of dev container support package...
[8730 ms] Start: Run in container: # Test for /home/node/.gitconfig and git
[8731 ms] Port forwarding connection from 65001 > 44387 > 44387 in the container.
[8732 ms] Start: Run in container: /home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/node -e 
[8732 ms] 
[8732 ms] 
[8733 ms] Start: Run in container: # Copy /Users/Me/.gitconfig to /home/node/.gitconfig
[8734 ms] 
[8734 ms] 
[8734 ms] Start: Run in container: # Cleaning up git config
[8742 ms] Removing Git config key: core.editor = vim
[8742 ms] 
[8742 ms] Start: Run: git config --global --get gpg.ssh.allowedSignersFile
[8744 ms] Start: Run in container: command -v git >/dev/null 2>&1 && git config --global --replace-all credential.helper '!f() { /home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/node /tmp/vscode-remote-containers-9d2e9ca7-81a3-4c42-8571-15cbd378fa00.js git-credential-helper $*; }; f' || true
[8748 ms] 
[8749 ms] 
[8749 ms] Ignoring option 'skip-requirements-check': not supported for server.
[8753 ms] [10:05:13] 




[8781 ms] [10:05:13] Installing extensions...
[8782 ms] [10:05:13] Extension host agent started.
[8787 ms] [10:05:13] Error while reading the extension cache file: /home/node/.cursor-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache Unable to read file '/home/node/.cursor-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache' (Error: Unable to resolve nonexistent file '/home/node/.cursor-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache')
[8787 ms] [10:05:13] Started initializing default profile extensions in extensions installation folder. file:///home/node/.cursor-server/extensions
[8796 ms] Port forwarding 65001 > 44387 > 44387 stderr: Connection established
[8815 ms] [10:05:13] ComputeTargetPlatform: linux-arm64
[8822 ms] Port forwarding connection from 65006 > 44387 > 44387 in the container.
[8822 ms] Start: Run in container: /home/node/.cursor-server/bin/f5f18731406b73244e0558ee7716d77c8096d150/node -e 
[8836 ms] [10:05:13] Completed initializing default profile extensions in extensions installation folder. file:///home/node/.cursor-server/extensions
[8837 ms] [10:05:13] [127.0.0.1][79f439f1][ManagementConnection] New connection established.
[8848 ms] [10:05:13] ComputeTargetPlatform: linux-arm64
[8871 ms] [10:05:13] Log level changed to info
[8881 ms] Port forwarding 65006 > 44387 > 44387 stderr: Connection established
[8948 ms] [10:05:13] [127.0.0.1][f3b111bd][ExtensionHostConnection] New connection established.
[8951 ms] [10:05:13] [127.0.0.1][f3b111bd][ExtensionHostConnection] <380> Launched Extension Host Process.
[9399 ms] [10:05:14] Extension 'bs-code.git-quick-stage' not found.
Make sure you use the full extension ID, including the publisher, e.g.: ms-dotnettools.csharp
[9934 ms] Start: Run in container: cat /proc/441/environ
[9971 ms] [10:05:14] Installing extension 'dbaeumer.vscode-eslint'...
[10194 ms] [10:05:15] Installing extension 'ms-azuretools.vscode-docker'...
[10306 ms] [10:05:15] Installing extension 'github.vscode-pull-request-github'...
[10307 ms] [10:05:15] Getting Manifest... dbaeumer.vscode-eslint
[10:05:15] Getting Manifest... ms-azuretools.vscode-docker
[10589 ms] [10:05:15] Getting Manifest... github.vscode-pull-request-github
[10743 ms] [10:05:15] Installing extension: dbaeumer.vscode-eslint {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: vr {
    scheme: 'file',
    authority: '',
    path: '/home/node/.cursor-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.cursor-server/extensions/extensions.json',
    _fsPath: '/home/node/.cursor-server/extensions/extensions.json'
  },
  productVersion: {
    version: '0.45.11',
    date: '2025-02-07T09:25:01.973Z',
    vscodeVersion: '1.96.2'
  }
}
[10743 ms] [10:05:15] Installing extension: ms-azuretools.vscode-docker {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: vr {
    scheme: 'file',
    authority: '',
    path: '/home/node/.cursor-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.cursor-server/extensions/extensions.json',
    _fsPath: '/home/node/.cursor-server/extensions/extensions.json'
  },
  productVersion: {
    version: '0.45.11',
    date: '2025-02-07T09:25:01.973Z',
    vscodeVersion: '1.96.2'
  }
}
[10743 ms] [10:05:15] Installing extension: github.vscode-pull-request-github {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: vr {
    scheme: 'file',
    authority: '',
    path: '/home/node/.cursor-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.cursor-server/extensions/extensions.json',
    _fsPath: '/home/node/.cursor-server/extensions/extensions.json'
  },
  productVersion: {
    version: '0.45.11',
    date: '2025-02-07T09:25:01.973Z',
    vscodeVersion: '1.96.2'
  }
}
[11103 ms] [10:05:16] Started downloading extension: dbaeumer.vscode-eslint 3.0.10 file:///home/node/.cursor-server/extensionsCache/cursor-dbaeumer.vscode-eslint-3.0.10-universal
[11104 ms] [10:05:16] Started downloading extension: ms-azuretools.vscode-docker 1.29.4 file:///home/node/.cursor-server/extensionsCache/cursor-ms-azuretools.vscode-docker-1.29.4-universal
[11105 ms] [10:05:16] Started downloading extension: github.vscode-pull-request-github 0.102.0 file:///home/node/.cursor-server/extensionsCache/cursor-github.vscode-pull-request-github-0.102.0-universal
[11641 ms] [10:05:16] Extension signature verification is not done: dbaeumer.vscode-eslint
[11642 ms] [10:05:16] Could not load vsce-sign module Cannot find package '@vscode/vsce-sign' imported from /vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150/out/server-main.js
[11656 ms] [10:05:16] Extracted extension to file:///home/node/.cursor-server/extensions/dbaeumer.vscode-eslint-3.0.10-universal: dbaeumer.vscode-eslint
[11659 ms] [10:05:16] Renamed to /home/node/.cursor-server/extensions/dbaeumer.vscode-eslint-3.0.10-universal
[11956 ms] [10:05:16] Extension signature verification is not done: github.vscode-pull-request-github
[11956 ms] [10:05:16] Could not load vsce-sign module Cannot find package '@vscode/vsce-sign' imported from /vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150/out/server-main.js
[12015 ms] [10:05:16] Extracted extension to file:///home/node/.cursor-server/extensions/github.vscode-pull-request-github-0.102.0-universal: github.vscode-pull-request-github
[12020 ms] [10:05:16] Renamed to /home/node/.cursor-server/extensions/github.vscode-pull-request-github-0.102.0-universal
[12152 ms] [10:05:17] Could not load vsce-sign module Cannot find package '@vscode/vsce-sign' imported from /vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150/out/server-main.js
[12153 ms] [10:05:17] Extension signature verification is not done: ms-azuretools.vscode-docker
[12226 ms] [10:05:17] Extracted extension to file:///home/node/.cursor-server/extensions/ms-azuretools.vscode-docker-1.29.4-universal: ms-azuretools.vscode-docker
[12230 ms] [10:05:17] Renamed to /home/node/.cursor-server/extensions/ms-azuretools.vscode-docker-1.29.4-universal
[12237 ms] [10:05:17] Extension installed successfully: dbaeumer.vscode-eslint file:///home/node/.cursor-server/extensions/extensions.json
[10:05:17] Extension installed successfully: github.vscode-pull-request-github file:///home/node/.cursor-server/extensions/extensions.json
[10:05:17] Extension installed successfully: ms-azuretools.vscode-docker file:///home/node/.cursor-server/extensions/extensions.json
[12239 ms] [10:05:17] Extension 'dbaeumer.vscode-eslint' v3.0.10 was successfully installed.
[10:05:17] Extension 'github.vscode-pull-request-github' v0.102.0 was successfully installed.
[10:05:17] Extension 'ms-azuretools.vscode-docker' v1.29.4 was successfully installed.
[12239 ms] [10:05:17] Error: Failed Installing Extensions: bs-code.git-quick-stage
    at Kc.installExtensions (file:///vscode/cursor-server/bin/linux-arm64/f5f18731406b73244e0558ee7716d77c8096d150/out/server-main.js:71:35452)

```
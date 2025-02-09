

## VSCode logs - `bs-code.git-quick-stage` extension correctly installed
```
[20 ms] Dev Containers 0.397.0 in VS Code 1.96.4 (cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba).
[19 ms] Start: Resolving Remote
[27 ms] Setting up container for folder or workspace: /Users/Me/Documents/GitHub/dev-container-test
[27 ms] Context: desktop-linux
[39 ms] Start: Check Docker is running
[39 ms] Start: Run: docker version
[61 ms] Client:
 Version:           27.5.1
 API version:       1.47
 Go version:        go1.22.11
[61 ms]  Git commit:        9f9e405
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
[292 ms] Start: Run: docker inspect --type container 69859a9fc22402298ce0e6da987c06adfa0f7e7ce7b270aee5fb82b69d27038d
[418 ms] Start: Run: docker ps -q -a --filter label=vsch.local.folder=/Users/Me/Documents/GitHub/dev-container-test --filter label=vsch.quality=stable
[543 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --filter label=devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json
[673 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test
[810 ms] Start: Run: docker ps -q -a --filter label=devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test
[949 ms] Running Dev Containers CLI:   up --user-data-folder /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data --container-session-data-folder /tmp/devcontainers-c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449 --workspace-folder /Users/Me/Documents/GitHub/dev-container-test --workspace-mount-consistency cached --gpu-availability detect --id-label devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --id-label devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --log-level debug --log-format json --config /Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --default-user-env-probe loginInteractiveShell --build-no-cache --mount type=volume,source=vscode,target=/vscode,external=true --skip-post-create --update-remote-user-uid-default on --mount-workspace-git-root --include-configuration --include-merged-configuration
[984 ms] ProxyResolver#loadSystemCertificates count
[985 ms] ProxyResolver#loadSystemCertificates count filtered
[986 ms] Start: Run: /Applications/Visual Studio Code.app/Contents/Frameworks/Code Helper (Plugin).app/Contents/MacOS/Code Helper (Plugin) /Users/Me/.vscode/extensions/ms-vscode-remote.remote-containers-0.397.0/dist/spec-node/devContainersSpecCLI.js up --user-data-folder /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data --container-session-data-folder /tmp/devcontainers-c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449 --workspace-folder /Users/Me/Documents/GitHub/dev-container-test --workspace-mount-consistency cached --gpu-availability detect --id-label devcontainer.local_folder=/Users/Me/Documents/GitHub/dev-container-test --id-label devcontainer.config_file=/Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --log-level debug --log-format json --config /Users/Me/Documents/GitHub/dev-container-test/.devcontainer/devcontainer.json --default-user-env-probe loginInteractiveShell --build-no-cache --mount type=volume,source=vscode,target=/vscode,external=true --skip-post-create --update-remote-user-uid-default on --mount-workspace-git-root --include-configuration --include-merged-configuration
[1134 ms] @devcontainers/cli 0.73.0. Node.js v20.18.1. darwin 24.2.0 arm64.
[1134 ms] Start: Run: docker buildx version
[1444 ms] github.com/docker/buildx v0.20.1-desktop.2 aaf7c2bc7f9ec3afee1cec77d671845a4b57a0c8
[1444 ms] 
[1444 ms] Start: Run: docker -v
[1510 ms] Start: Resolving Remote
[1513 ms] Start: Run: docker compose version --short
[1733 ms] Docker Compose version: 2.32.4-desktop.1
[1733 ms] Start: Run: docker compose -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml --profile * config
[2013 ms] name: dev-container-test
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
[2015 ms] Start: Run: docker ps -q -a --filter label=com.docker.compose.project=dev-container-test --filter label=com.docker.compose.service=node
[2135 ms] Start: Run: docker events --format {{json .}} --filter event=start
[2136 ms] PersistedPath=/Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data, ContainerHasLabels=false
[2137 ms] Start: Run: docker compose -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml --profile * config
[2413 ms] name: dev-container-test
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
[2416 ms] Start: Run: docker inspect --type image mcr.microsoft.com/vscode/devcontainers/typescript-node:1-22-bookworm
[2553 ms] Docker Compose override file for building image:
services:
  node:
    build:
      dockerfile: /var/folders/23/nn4j7__55mx52mgqjcdxx0vc0000gn/T/devcontainercli/container-features/0.73.0-1739096934530/Dockerfile-with-features
      args:
        - BUILDKIT_INLINE_CACHE=1
        - _DEV_CONTAINERS_BASE_IMAGE=base

[2553 ms] Start: Run: docker compose --project-name dev-container-test -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml -f /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.build-1739096934534.yml build --no-cache
[+] Building 2.9s (13/15)                                  docker:desktop-linux
[+] Building 3.0s (13/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
[+] Building 3.2s (14/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
[+] Building 3.3s (14/15)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
[+] Building 3.5s (15/16)                                  docker:desktop-linux
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
 => [node internal] load metadata for mcr.microsoft.com/vscode/devcontain  0.0s
[+] Building 3.6s (17/17) FINISHED                         docker:desktop-linux 
 => [node internal] load build definition from Dockerfile-with-features    0.0s
 => => transferring dockerfile: 2.16kB                                     0.0s
 => WARN: JSONArgsRecommended: JSON arguments recommended for CMD to prev  0.0s
 => [node internal] load metadata for mcr.microsoft.com/vscode/devcontain  0.0s
 => [node internal] load .dockerignore                                     0.0s
 => => transferring context: 2B                                            0.0s
 => CACHED [node base  1/11] FROM mcr.microsoft.com/vscode/devcontainers/  0.0s
 => [node internal] load build context                                     0.0s
 => => transferring context: 145.69kB                                      0.0s
 => [node base  2/11] RUN mkdir -p "/pnpm" && chmod 777 "/pnpm"            0.2s
 => [node base  3/11] RUN npm install -g corepack@latest --force           0.6s
 => [node base  4/11] RUN corepack enable && corepack prepare pnpm@10.2.1  1.1s
 => [node base  5/11] RUN corepack enable pnpm                             0.1s
 => [node base  6/11] COPY . /app                                          0.0s
 => [node base  7/11] WORKDIR /app                                         0.0s
 => [node base  8/11] COPY . .                                             0.3s
 => [node base  9/11] RUN pnpm config set store-dir /pnpm-store            0.3s
 => [node base 10/11] RUN yes | pnpm --version                             0.3s
 => [node base 11/11] RUN pnpm install                                     0.4s
 => [node] exporting to image                                              0.1s
 => => exporting layers                                                    0.1s
 => => preparing layers for inline cache                                   0.0s
 => => writing image sha256:1c065c3d121deffa643ab5cdd0e32b9cb3f9c4bdd784d  0.0s
 => => naming to docker.io/library/dev-container-test-node                 0.0s
 => [node] resolving provenance for metadata file                          0.0s
[+] Building 1/1
 ✔ node  Built                                                             0.0s 
[6529 ms] Start: Run: docker inspect --type image dev-container-test-node
[6664 ms] Docker Compose override file for creating container:
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
[6664 ms] Writing docker-compose.devcontainer.containerFeatures-1739096938645-cca353d9-f802-451f-8a6d-0316069b09f8.yml to /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose
[6665 ms] Start: Run: docker compose --project-name dev-container-test -f /Users/Me/Documents/GitHub/dev-container-test/docker-compose.yml -f /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.build-1739096934534.yml -f /Users/Me/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/data/docker-compose/docker-compose.devcontainer.containerFeatures-1739096938645-cca353d9-f802-451f-8a6d-0316069b09f8.yml up -d
[+] Running 1/1
 ✔ Container dev-container-test-node-1  Started                            0.2s 
[7113 ms] Start: Run: docker ps -q -a --filter label=com.docker.compose.project=dev-container-test --filter label=com.docker.compose.service=node
[7244 ms] Start: Run: docker inspect --type container 68515aa82abd
[7382 ms] Start: Inspecting container
[7382 ms] Start: Run: docker inspect --type container 68515aa82abd454ed0ee0a718942ea61858489964a042d7e15fd61568890674f
[7521 ms] Start: Run in container: /bin/sh
[7525 ms] Start: Run in container: uname -m
[7597 ms] aarch64
[7597 ms] 
[7597 ms] Start: Run in container: (cat /etc/os-release || cat /usr/lib/os-release) 2>/dev/null
[7599 ms] PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
[7599 ms] 
[7599 ms] Start: Run in container:  (command -v getent >/dev/null 2>&1 && getent passwd 'node' || grep -E '^node|^[^:]*:[^:]*:node:' /etc/passwd || true)
[7601 ms] Start: Run in container: test -f '/var/devcontainer/.patchEtcEnvironmentMarker'
[7602 ms] 
[7602 ms] 
[7602 ms] Exit code 1
[7602 ms] Start: Run in container: /bin/sh
[7604 ms] Start: Run in container: test ! -f '/var/devcontainer/.patchEtcEnvironmentMarker' && set -o noclobber && mkdir -p '/var/devcontainer' && { > '/var/devcontainer/.patchEtcEnvironmentMarker' ; } 2> /dev/null
[7656 ms] 
[7656 ms] 
[7656 ms] Start: Run in container: cat >> /etc/environment <<'etcEnvrionmentEOF'
[7659 ms] 
[7659 ms] 
[7659 ms] Start: Run in container: test -f '/var/devcontainer/.patchEtcProfileMarker'
[7660 ms] 
[7660 ms] 
[7660 ms] Exit code 1
[7660 ms] Start: Run in container: test ! -f '/var/devcontainer/.patchEtcProfileMarker' && set -o noclobber && mkdir -p '/var/devcontainer' && { > '/var/devcontainer/.patchEtcProfileMarker' ; } 2> /dev/null
[7661 ms] 
[7661 ms] 
[7661 ms] Start: Run in container: sed -i -E 's/((^|\s)PATH=)([^\$]*)$/\1${PATH:-\3}/g' /etc/profile || true
[7662 ms] 
[7662 ms] 
[7668 ms] Start: Run: docker inspect --type container 68515aa82abd454ed0ee0a718942ea61858489964a042d7e15fd61568890674f
[7787 ms] Start: Run: docker exec -i -u root 68515aa82abd454ed0ee0a718942ea61858489964a042d7e15fd61568890674f /bin/sh -c echo "New container started. Keep-alive process started." ; export VSCODE_REMOTE_CONTAINERS_SESSION=c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449 ; /bin/sh
[7789 ms] Start: Inspecting container
[7789 ms] Start: Run: docker inspect --type container 68515aa82abd454ed0ee0a718942ea61858489964a042d7e15fd61568890674f
[7831 ms] New container started. Keep-alive process started.
[7906 ms] Start: Run in container: /bin/sh
[7908 ms] Start: Run in container: uname -m
[7963 ms] aarch64
[7963 ms] 
[7963 ms] Start: Run in container: (cat /etc/os-release || cat /usr/lib/os-release) 2>/dev/null
[7965 ms] PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
[7965 ms] 
[7965 ms] Start: Run in container:  (command -v getent >/dev/null 2>&1 && getent passwd 'node' || grep -E '^node|^[^:]*:[^:]*:node:' /etc/passwd || true)
[7967 ms] Start: Run in container: command -v git >/dev/null 2>&1 && ROOT_FOLDER="$(git -C '/app' rev-parse --show-toplevel)" && test "$(stat -c %u "$ROOT_FOLDER")" != "$(id -u)" && echo -n "$ROOT_FOLDER"
[7971 ms] 
[7972 ms] 
[7972 ms] Exit code 1
[7972 ms] Start: Updating configuration state
[7976 ms] Start: Run: docker compose version --short
[8079 ms] Docker Compose version: 2.32.4-desktop.1
[8079 ms] Start: Setup shutdown monitor
[8080 ms] Forking shutdown monitor: /Users/Me/.vscode/extensions/ms-vscode-remote.remote-containers-0.397.0/dist/shutdown/shutdownMonitorProcess /var/folders/23/nn4j7__55mx52mgqjcdxx0vc0000gn/T/vscode-remote-containers-965aad68-6385-4e60-8bfc-51c157e6277e.sock dockerCompose Debug /Users/Me/Library/Application Support/Code/logs/20250209T051918/window1/exthost/ms-vscode-remote.remote-containers 1739096931981
[8082 ms] Start: Run in container: test -d '/home/node/.vscode-server'
[8085 ms] 
[8085 ms] 
[8085 ms] Exit code 1
[8085 ms] Start: Run in container: test -d '/home/node/.vscode-remote'
[8086 ms] 
[8086 ms] 
[8087 ms] Exit code 1
[8087 ms] Start: Run in container: test ! -f '/home/node/.vscode-server/data/Machine/.writeMachineSettingsMarker' && set -o noclobber && mkdir -p '/home/node/.vscode-server/data/Machine' && { > '/home/node/.vscode-server/data/Machine/.writeMachineSettingsMarker' ; } 2> /dev/null
[8093 ms] 
[8094 ms] 
[8094 ms] Start: Run in container: cat /home/node/.vscode-server/data/Machine/settings.json
[8095 ms] 
[8095 ms] cat: /home/node/.vscode-server/data/Machine/settings.json: No such file or directory
[8095 ms] Exit code 1
[8095 ms] 
Support for ARM64 is in preview.

[8095 ms] Start: Run in container: test -d '/home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba'
[8096 ms] 
[8096 ms] 
[8096 ms] Exit code 1
[8096 ms] Start: Run in container: test -d '/vscode/vscode-server/bin/linux-arm64/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba'
[8097 ms] 
[8097 ms] 
[8097 ms] Start: Run in container: mkdir -p '/home/node/.vscode-server/bin' && ln -snf '/vscode/vscode-server/bin/linux-arm64/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba' '/home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba'
[8099 ms] 
[8099 ms] 
[8099 ms] Start: Run in container: /bin/sh
[8100 ms] Start: Run in container: test -x '/home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/bin/helpers/check-requirements.sh'
[8100 ms] Start: Run in container: touch '/vscode/vscode-server/bin/linux-arm64/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba'
[8101 ms] 
[8101 ms] 
[8101 ms] Start: Run in container: '/home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/bin/helpers/check-requirements.sh'
[8123 ms] 
[8123 ms] 
[8123 ms] Start: Launching Dev Containers helper.
[8123 ms] ssh-agent: SSH_AUTH_SOCK in container (/tmp/vscode-ssh-auth-fb1397f7-df36-4952-a703-0c2a02fb9b60.sock) forwarded to local host (/private/tmp/com.apple.launchd.lSY4LEOhWc/Listeners).
[8123 ms] X11 forwarding: DISPLAY not set on local host.
[8123 ms] Start: Run in container: gpgconf --list-dirs
[8125 ms] sysconfdir:/etc/gnupg
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
[8125 ms] 
[8125 ms] Start: Run in container: ls '/home/node/.gnupg/private-keys-v1.d' 2>/dev/null
[8126 ms] 
[8126 ms] 
[8126 ms] Exit code 2
[8126 ms] Start: Run: gpgconf --list-dirs
[8128 ms] spawn gpgconf ENOENT
[8128 ms] gpg-agent: No agent-extra-socket found on local host.
[8129 ms] Start: Run in container: (command -v 'docker' || command -v 'oras' || command -v 'skopeo') >/dev/null 2>&1
[8129 ms] 
[8129 ms] 
[8129 ms] Exit code 127
[8129 ms] Start: Run in container: /bin/sh
[8130 ms] userEnvProbe: loginInteractiveShell (default)
[8130 ms] Start: Run in container: test -f '/tmp/devcontainers-c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449/env-loginInteractiveShell.json'
[8131 ms] Start: Run in container: echo ~
[8131 ms] 
[8131 ms] 
[8131 ms] Exit code 1
[8131 ms] Start: Run in container: # Test for /home/node/.ssh/known_hosts and ssh
[8131 ms] userEnvProbe: not found in cache
[8131 ms] userEnvProbe shell: /bin/bash
[8132 ms] 
[8132 ms] 
[8132 ms] Start: Run in container: # Copy /Users/Me/.ssh/known_hosts to /home/node/.ssh/known_hosts
[8134 ms] 
[8134 ms] 
[8171 ms] /home/node
[8172 ms] 
[8172 ms] Start: Run in container: cat <<'EOF-/tmp/vscode-remote-containers-fb1397f7-df36-4952-a703-0c2a02fb9b60.js' >/tmp/vscode-remote-containers-fb1397f7-df36-4952-a703-0c2a02fb9b60.js
[8172 ms] 
[8172 ms] 
[8172 ms] Start: Run in container: command -v git >/dev/null 2>&1 && git config --system --replace-all credential.helper '!f() { /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/node /tmp/vscode-remote-containers-fb1397f7-df36-4952-a703-0c2a02fb9b60.js git-credential-helper $*; }; f' || true
[8174 ms] 
[8174 ms] 
[8174 ms] Start: Run in container: cat <<'EOF-/tmp/vscode-remote-containers-server-fb1397f7-df36-4952-a703-0c2a02fb9b60.js' >/tmp/vscode-remote-containers-server-fb1397f7-df36-4952-a703-0c2a02fb9b60.js_1739096940155
[8176 ms] 
[8176 ms] 
[8176 ms] Start: Run in container: for pid in `cd /proc && ls -d [0-9]*`; do { echo $pid ; readlink /proc/$pid/cwd || echo ; readlink /proc/$pid/ns/mnt || echo ; cat /proc/$pid/stat | tr "
[8185 ms] 
[8185 ms] 
[8196 ms] Start: Run in container: cat '/home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/product.json'
[8198 ms] Start: Run in container: cat '/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba' 2>/dev/null || (umask 377 && echo '8b941966-b40f-4ace-9e95-de7bc8e781f6' >'/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba-5c556215-c036-4493-9897-ddd17afd1a1b' && mv -n '/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba-5c556215-c036-4493-9897-ddd17afd1a1b' '/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba' && rm -f '/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba-5c556215-c036-4493-9897-ddd17afd1a1b' && cat '/home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba')
[8199 ms] 8b941966-b40f-4ace-9e95-de7bc8e781f6
[8199 ms] 
[8200 ms] Start: Starting VS Code Server
[8200 ms] Start: Preparing Extensions
[8200 ms] Start: Run in container: test ! -f '/home/node/.vscode-server/data/Machine/.installExtensionsMarker' && set -o noclobber && mkdir -p '/home/node/.vscode-server/data/Machine' && { > '/home/node/.vscode-server/data/Machine/.installExtensionsMarker' ; } 2> /dev/null
[8201 ms] 
[8201 ms] 
[8201 ms] Extensions cache, install extensions: dbaeumer.vscode-eslint, bs-code.git-quick-stage, ms-azuretools.vscode-docker, GitHub.copilot, GitHub.copilot-chat, GitHub.vscode-pull-request-github
[8201 ms] Start: Run in container: test -d /home/node/.vscode-server/extensionsCache && ls /home/node/.vscode-server/extensionsCache || true
[8202 ms] 
[8202 ms] 
[8202 ms] Start: Run in container: test -d /vscode/vscode-server/extensionsCache && ls /vscode/vscode-server/extensionsCache || true
[8203 ms] bs-code.git-quick-stage-0.3.13
dbaeumer.vscode-eslint-3.0.10
github.copilot-1.266.0
github.copilot-chat-0.23.2
github.vscode-pull-request-github-0.102.0
ms-azuretools.vscode-docker-1.29.4
[8203 ms] 
[8203 ms] Extensions cache, link in container: bs-code.git-quick-stage-0.3.13, dbaeumer.vscode-eslint-3.0.10, github.copilot-1.266.0, github.copilot-chat-0.23.2, github.vscode-pull-request-github-0.102.0, ms-azuretools.vscode-docker-1.29.4
[8203 ms] Start: Run in container: mkdir -p '/home/node/.vscode-server/extensionsCache' && ln -s '/vscode/vscode-server/extensionsCache'/* '/home/node/.vscode-server/extensionsCache' || true
[8204 ms] 
[8204 ms] 
[8205 ms] Optimizing extensions for quality: stable
[8205 ms] Start: Run in container: cd /vscode/vscode-server/extensionsCache && touch 'bs-code.git-quick-stage-0.3.13' 'dbaeumer.vscode-eslint-3.0.10' 'github.copilot-1.266.0' 'github.copilot-chat-0.23.2' 'github.vscode-pull-request-github-0.102.0' 'ms-azuretools.vscode-docker-1.29.4'
[8205 ms] Start: Run in container: /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/bin/code-server --log debug --force-disable-user-env --server-data-dir /home/node/.vscode-server --use-host-proxy --telemetry-level all --accept-server-license-terms --host 127.0.0.1 --port 0 --connection-token-file /home/node/.vscode-server/data/Machine/.connection-token-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba --extensions-download-dir /home/node/.vscode-server/extensionsCache --install-extension dbaeumer.vscode-eslint --install-extension bs-code.git-quick-stage --install-extension ms-azuretools.vscode-docker --install-extension GitHub.copilot --install-extension GitHub.copilot-chat --install-extension GitHub.vscode-pull-request-github --start-server --disable-websocket-compression --skip-requirements-check
[8206 ms] 
[8206 ms] 
[8252 ms] userEnvProbe PATHs:
Probe:     '/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/pnpm:/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/node/.local/bin'
Container: '/pnpm:/usr/local/share/nvm/current/bin:/usr/local/share/npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
[8252 ms] Start: Run in container: mkdir -p '/tmp/devcontainers-c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449' && cat > '/tmp/devcontainers-c34eb80f-ce67-437e-8d19-67efe100f35b1739096931449/env-loginInteractiveShell.json' << 'envJSON'
[8254 ms] 
[8254 ms] 
[8293 ms] *
* Visual Studio Code Server
*
* By using the software, you agree to
* the Visual Studio Code Server License Terms (https://aka.ms/vscode-server-license) and
* the Microsoft Privacy Statement (https://privacy.microsoft.com/en-US/privacystatement).
*
[8295 ms] Server bound to 127.0.0.1:45311 (IPv4)
Extension host agent listening on 45311

[8295 ms] Start: Run in container: echo 45311 >'/home/node/.vscode-server/data/Machine/.devport-cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba'
[8296 ms] 
[8296 ms] 
[8296 ms] Port forwarding for container port 45311 starts listening on local port.
[8296 ms] Port forwarding local port 45311 to container port 45311
[8299 ms] Initializing configuration support...
[8299 ms] Internal initialization of dev container support package...
[8301 ms] Start: Run in container: # Test for /home/node/.gitconfig and git
[8302 ms] Port forwarding connection from 58996 > 45311 > 45311 in the container.
[8302 ms] Start: Run in container: /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/node -e 
[8303 ms] 
[8303 ms] 
[8303 ms] Start: Run in container: # Copy /Users/Me/.gitconfig to /home/node/.gitconfig
[8304 ms] 
[8304 ms] 
[8304 ms] Start: Run in container: # Cleaning up git config
[8314 ms] Removing Git config key: core.editor = vim
[8314 ms] 
[8315 ms] Start: Run: git config --global --get gpg.ssh.allowedSignersFile
[8316 ms] Start: Run in container: command -v git >/dev/null 2>&1 && git config --global --replace-all credential.helper '!f() { /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/node /tmp/vscode-remote-containers-fb1397f7-df36-4952-a703-0c2a02fb9b60.js git-credential-helper $*; }; f' || true
[8322 ms] 
[8322 ms] 
[8332 ms] Ignoring option 'skip-requirements-check': not supported for server.
[8335 ms] [10:29:00] 




[8362 ms] [10:29:00] Installing extensions...
[8363 ms] [10:29:00] Extension host agent started.
[8365 ms] Port forwarding 58996 > 45311 > 45311 stderr: Connection established
[8385 ms] [10:29:00] Error while reading the extension cache file: /home/node/.vscode-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache Unable to read file '/home/node/.vscode-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache' (Error: Unable to resolve nonexistent file '/home/node/.vscode-server/data/CachedProfilesData/__default__profile__/extensions.builtin.cache')
[8386 ms] [10:29:00] Started initializing default profile extensions in extensions installation folder. file:///home/node/.vscode-server/extensions
[8393 ms] Port forwarding connection from 59000 > 45311 > 45311 in the container.
[8393 ms] Start: Run in container: /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/node -e 
[8407 ms] [10:29:00] [127.0.0.1][041e71ec][ManagementConnection] New connection established.
[8436 ms] [10:29:00] ComputeTargetPlatform: linux-arm64
[8453 ms] [10:29:00] Log level changed to info
[8461 ms] Port forwarding 59000 > 45311 > 45311 stderr: Connection established
[8484 ms] [10:29:00] Completed initializing default profile extensions in extensions installation folder. file:///home/node/.vscode-server/extensions
[8501 ms] [10:29:00] [127.0.0.1][e7fe59bf][ExtensionHostConnection] New connection established.
[8531 ms] [10:29:00] [127.0.0.1][e7fe59bf][ExtensionHostConnection] <386> Launched Extension Host Process.
[9091 ms] [10:29:01] Installing extension 'github.copilot'...
[9097 ms] [10:29:01] Installing extension 'dbaeumer.vscode-eslint'...
[9097 ms] [10:29:01] Installing extension 'github.copilot-chat'...
[9106 ms] [10:29:01] Installing extension 'github.vscode-pull-request-github'...
[9118 ms] [10:29:01] Installing extension 'ms-azuretools.vscode-docker'...
[9324 ms] [10:29:01] Installing extension 'bs-code.git-quick-stage'...
[9326 ms] [10:29:01] Getting Manifest... github.copilot
[10:29:01] Getting Manifest... dbaeumer.vscode-eslint
[10:29:01] Getting Manifest... ms-azuretools.vscode-docker
[10:29:01] Getting Manifest... bs-code.git-quick-stage
[9470 ms] [10:29:01] Getting Manifest... github.copilot-chat
[9548 ms] Start: Run in container: cat /proc/494/environ
[9556 ms] [10:29:01] Getting Manifest... github.vscode-pull-request-github
[9577 ms] [10:29:01] Installing extension: dbaeumer.vscode-eslint {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[10:29:01] Installing extension: github.copilot {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[10:29:01] Installing extension: bs-code.git-quick-stage {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[9577 ms] [10:29:01] Installing extension: ms-azuretools.vscode-docker {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[10:29:01] Installing extension: github.copilot-chat {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[9577 ms] [10:29:01] Installing extension: github.vscode-pull-request-github {
  isMachineScoped: false,
  installPreReleaseVersion: false,
  isApplicationScoped: true,
  isBuiltin: false,
  installGivenVersion: false,
  installOnlyNewlyAddedFromExtensionPack: true,
  profileLocation: br {
    scheme: 'file',
    authority: '',
    path: '/home/node/.vscode-server/extensions/extensions.json',
    query: '',
    fragment: '',
    _formatted: 'file:///home/node/.vscode-server/extensions/extensions.json',
    _fsPath: '/home/node/.vscode-server/extensions/extensions.json'
  },
  productVersion: { version: '1.96.4', date: '2025-01-16T00:16:19.038Z' }
}
[9863 ms] [10:29:01] Getting Manifest... github.copilot
[9900 ms] [10:29:01] Getting Manifest... github.copilot-chat
[10695 ms] [10:29:02] Extension signature verification result for github.copilot-chat: Success. Executed: true. Duration: 721ms.
[10:29:02] Extension signature verification result for github.vscode-pull-request-github: Success. Executed: true. Duration: 717ms.
[10697 ms] [10:29:02] Extension signature verification result for dbaeumer.vscode-eslint: Success. Executed: true. Duration: 723ms.
[10705 ms] [10:29:02] Extension signature verification result for github.copilot: Success. Executed: true. Duration: 735ms.
[10707 ms] [10:29:02] Extension signature verification result for ms-azuretools.vscode-docker: Success. Executed: true. Duration: 726ms.
[10752 ms] [10:29:02] Extracted extension to file:///home/node/.vscode-server/extensions/dbaeumer.vscode-eslint-3.0.10: dbaeumer.vscode-eslint
[10759 ms] [10:29:02] Renamed to /home/node/.vscode-server/extensions/dbaeumer.vscode-eslint-3.0.10
[10837 ms] [10:29:02] Extracted extension to file:///home/node/.vscode-server/extensions/github.vscode-pull-request-github-0.102.0: github.vscode-pull-request-github
[10839 ms] [10:29:02] Extracted extension to file:///home/node/.vscode-server/extensions/ms-azuretools.vscode-docker-1.29.4: ms-azuretools.vscode-docker
[10848 ms] [10:29:02] Renamed to /home/node/.vscode-server/extensions/github.vscode-pull-request-github-0.102.0
[10849 ms] [10:29:02] Renamed to /home/node/.vscode-server/extensions/ms-azuretools.vscode-docker-1.29.4
[10876 ms] [10:29:02] Extension signature verification result for bs-code.git-quick-stage: Success. Executed: true. Duration: 493ms.
[11048 ms] [10:29:03] Extracted extension to file:///home/node/.vscode-server/extensions/github.copilot-chat-0.23.2: github.copilot-chat
[11055 ms] [10:29:03] Renamed to /home/node/.vscode-server/extensions/github.copilot-chat-0.23.2
[11199 ms] [10:29:03] Extracted extension to file:///home/node/.vscode-server/extensions/github.copilot-1.266.0: github.copilot
[11206 ms] [10:29:03] Renamed to /home/node/.vscode-server/extensions/github.copilot-1.266.0
[13352 ms] [10:29:05] Extracted extension to file:///home/node/.vscode-server/extensions/bs-code.git-quick-stage-0.3.13: bs-code.git-quick-stage
[13480 ms] [10:29:05] Renamed to /home/node/.vscode-server/extensions/bs-code.git-quick-stage-0.3.13
[13492 ms] [10:29:05] Extension installed successfully: dbaeumer.vscode-eslint file:///home/node/.vscode-server/extensions/extensions.json
[10:29:05] Extension installed successfully: github.vscode-pull-request-github file:///home/node/.vscode-server/extensions/extensions.json
[10:29:05] Extension installed successfully: ms-azuretools.vscode-docker file:///home/node/.vscode-server/extensions/extensions.json
[10:29:05] Extension installed successfully: github.copilot-chat file:///home/node/.vscode-server/extensions/extensions.json
[10:29:05] Extension installed successfully: github.copilot file:///home/node/.vscode-server/extensions/extensions.json
[10:29:05] Extension installed successfully: bs-code.git-quick-stage file:///home/node/.vscode-server/extensions/extensions.json
[13494 ms] [10:29:05] Extension 'dbaeumer.vscode-eslint' v3.0.10 was successfully installed.
[10:29:05] Extension 'github.vscode-pull-request-github' v0.102.0 was successfully installed.
[10:29:05] Extension 'ms-azuretools.vscode-docker' v1.29.4 was successfully installed.
[10:29:05] Extension 'github.copilot-chat' v0.23.2 was successfully installed.
[13495 ms] [10:29:05] Extension 'github.copilot' v1.266.0 was successfully installed.
[10:29:05] Extension 'bs-code.git-quick-stage' v0.3.13 was successfully installed.
[13573 ms] Port forwarding connection from 59078 > 45311 > 45311 in the container.
[13574 ms] Start: Run in container: /home/node/.vscode-server/bin/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/node -e 
[13689 ms] Port forwarding 59078 > 45311 > 45311 stderr: Connection established
[14779 ms] Port forwarding 59078 > 45311 > 45311: Local close
[14781 ms] Port forwarding 59078 > 45311 > 45311 stderr: Remote stdin close
[14890 ms] Port forwarding 59078 > 45311 > 45311 terminated by extension (closed) with code 0 and signal null.


```
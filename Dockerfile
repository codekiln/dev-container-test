# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.187.0/containers/typescript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version: 16, 18, 20, 22
# bookworm has ARM support
ARG VARIANT="22-bookworm"
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:1-${VARIANT} AS base

# https://blog.hyperknot.com/p/corepacks-packagemanager-field
# https://github.com/nodejs/corepack/issues/485
ENV COREPACK_ENABLE_AUTO_PIN=0

ENV COREPACK_ENABLE_DOWNLOAD_PROMPT=0

# https://turbo.build/repo/docs/telemetry
ENV TURBO_TELEMETRY_DISABLED=

# https://consoledonottrack.com/
ENV DO_NOT_TRACK=1

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

# Create PNPM_HOME directory and set permissions
RUN mkdir -p "$PNPM_HOME" && chmod 777 "$PNPM_HOME"

# necessary because of https://github.com/nodejs/corepack/issues/612
# https://github.com/npm/cli/issues/8075#issuecomment-2628545611
RUN npm install -g corepack@latest --force
RUN corepack enable && corepack prepare pnpm@10.2.1 --activate && corepack enable pnpm

RUN corepack enable pnpm

COPY . /app
WORKDIR /app

COPY . .

# preferably, we'd do multi-stage builds here
RUN pnpm config set store-dir /pnpm-store
RUN yes | pnpm --version
RUN pnpm install
CMD pnpm dev
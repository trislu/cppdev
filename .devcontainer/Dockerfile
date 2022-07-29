# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.241.1/containers/alpine/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.15, 3.14, 3.13
ARG VARIANT="3.15"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}

# Set apt mirror
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# ** [Optional] Uncomment this section to install additional packages. **
RUN apk update \
    && apk add --no-cache build-base

RUN apk add --no-cache gdb valgrind cmake
RUN apk add --no-cache libxml2-dev libevent-dev librdkafka-dev luajit-dev
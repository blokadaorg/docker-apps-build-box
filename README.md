# Blokada Apps Build Box

## Introduction

This Docker image is meant to contain everything necessary to build Blokada apps. Tested on macos machines as host.

To use it, it should be enough to specify the following when running the container:
- the volume mount to the desired app repo source code (see supported apps below)
- the make command of that repo to execute

Supported repos:
- blokada (to run flutter tests, compile android flutter common module, and android apps)
- ios will not be supported (since there is no decent way to compile ios projects in docker as of 2025)
- maybe web dashboard some day

There should be no need to specify any params building this image. The defaults are set to match Blokada projects. However, some env variables are expected to be set (see blokada repo Makefiles for details).

See fork upstream README for advanced use.

## Building

To build on mac:

```
$ docker buildx build --platform=linux/amd64 -t docker-apps-build-box .
```

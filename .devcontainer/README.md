# VS Code Container Definition

A **development container** is a running [Docker](https://www.docker.com) container with a well-defined tool/runtime stack and its prerequisites.

The [VS Code Remote - Containers](https://aka.ms/vscode-remote/download/containers) extension and [GitHub Codespaces](https://github.com/features/codespaces) allow you to open or clone code in a local or cloud-hosted dev container and take advantage of VS Code's full development feature set.

This directory contains the **dev container definitions** to help get you up and running with a containerized environment. The definitions describe the appropriate toolchains, runtime arguments for starting the container, along with helpful VS Code extensions.

This container image aims to be a consistent environment and tool-chain to enable new contributors or team members to be productive quickly.

> If you are unfamiliar with Devcontainers, it is **strongly** recommended to follow the [Dev Containers tutorial
](https://code.visualstudio.com/docs/devcontainers/tutorial).

## Devcontainer Library Scripts

Some types of devcontainers will automatically execute all scripts contained within the `library-scripts` directory. This is typically performed by the `/srv/startup.sh` script, which you can see executed in the `postAttachCommand` of `devcontainer.json`.

This is done to make it easier to configure runtime development features, such as setting up a virtual environment in python, or triggering the build process after the devcontainer is initialized.

It is encourage to leverage this directory for any "startup" actions that might be done in the post-attach state of the devcontainer.

## Extending the repository devcontainer

Repositories don't always require the same set of tools as others, which can result in needs arising to install additional tools. If you are installing a toolchain from an external public source (e.g. GitHub Releases, Public CDN), efforts should be taken to either ensure the checksum validity of the downloaded package, or attempt to bring the tool within the Arctic Wolf artifact stores.

If a package is contained within Arctic Wolf artifact stores, it is recommended to leverage the `library-scripts` directory to have a script responsible for installing and configuring the tool. As when a devcontainer has been provisioned, it will contain the approach AWS credentials to authenticate with Arctic Wolf artifact stores.

For cases that are common across multiple repositories, it is recommended to leverage the [rtkwlf/vscode-dev-containers](https://github.com/rtkwlf/vscode-dev-containers) repository to create a new pre-built dev-container, or extend an existing one to include the toolchains.

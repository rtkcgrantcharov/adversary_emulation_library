FROM 199883727417.dkr.ecr.us-west-2.amazonaws.com/awn/vscode-dev-containers/python3.9:v1.5.8

USER root
RUN ENABLE_NONROOT_DOCKER=false \
  /bin/bash \
  -c "$(curl -fsSL https://raw.githubusercontent.com/devcontainers/features/main/src/docker-outside-of-docker/install.sh)"
USER vscode

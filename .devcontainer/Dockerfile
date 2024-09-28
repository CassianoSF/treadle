FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y \
  git \
  curl \
  openssh-client


USER vscode
RUN mkdir -p /home/vscode/.bun
RUN curl -fsSL https://bun.sh/install | bash
RUN echo "export PATH="/home/vscode/.bun/bin:$PATH"" >> /home/vscode/.bashrc
RUN git config --global --add safe.directory /workspaces/treadle





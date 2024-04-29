FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y zsh zsh-autosuggestions vim tmux eza fd ripgrep

WORKDIR /workspace

FROM alpine:latest

RUN apk update \
    && apk add --no-cache git curl zsh neovim tmux starship fd ripgrep neofetch github-cli tig bat \
    rm -rf /var/cache/apk/*

RUN git clone "https://github.com/koyama0318/dotfiles.git" dotfiles
RUN ./dotfiles/scripts/link.sh

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"

WORKDIR /workspace

#!/bin/sh

ln -svf $(pwd)/alacritty/alacritty.yml $HOME/.alacritty.yml
ln -svf $(pwd)/zsh/.zshrc $HOME/.zshrc
ln -svf $(pwd)/zsh/starship.toml $HOME/.config/starship.toml
ln -svf $(pwd)/nvim $HOME/.config
ln -svf $(pwd)/tmux/.tmux.conf $HOME/.tmux.conf
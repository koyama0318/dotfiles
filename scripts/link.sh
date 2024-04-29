#!/bin/sh

ln -svf $(pwd)/zsh/.zshrc $HOME/.zshrc
ln -svf $(pwd)/alacritty $HOME/.config/alacritty
ln -svf $(pwd)/starship/starship.toml $HOME/.config/starship.toml
ln -svf $(pwd)/nvim $HOME/.config
ln -svf $(pwd)/tmux/.tmux.conf $HOME/.tmux.conf

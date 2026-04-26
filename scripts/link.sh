#!/bin/zsh

set -e

echo "🔗 Linking Claude Code config..."
mkdir -p ~/.claude
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md

echo "🔗 Linking zsh config..."
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "🔗 Linking Ghostty config..."
mkdir -p ~/.config/ghostty
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf ~/dotfiles/ghostty/config "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

echo "🔗 Linking git config..."
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "🔗 Linking starship config..."
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "🔗 Linking tmux config..."
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
ln -sfn ~/dotfiles/tmux/layouts ~/.tmux/layouts
chmod +x ~/dotfiles/tmux/layouts/*.sh

echo "🔗 Linking vim config..."
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

echo "🔗 Linking VS Code user settings..."
mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf ~/dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

echo "✅ Linking completed!"

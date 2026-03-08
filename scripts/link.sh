#!/bin/zsh

set -e

echo "🔗 Linking Claude Code config..."
mkdir -p ~/.claude
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md

echo "🔗 Linking zsh config..."
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "🔗 Linking Ghostty config..."
mkdir -p ~/.config/ghostty/themes
ln -sf ~/dotfiles/ghostty/themes/blight_lights ~/.config/ghostty/themes/blight_lights
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf ~/dotfiles/ghostty/config "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln -sf ~/dotfiles/ghostty/themes "$HOME/Library/Application Support/com.mitchellh.ghostty/themes"

echo "🔗 Linking git config..."
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "🔗 Linking starship config..."
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "🔗 Linking asdf config..."
ln -sf ~/dotfiles/asdf/.asdfrc ~/.asdfrc
ln -sf ~/dotfiles/asdf/.tool-versions ~/.tool-versions

echo "🔗 Linking tmux config..."
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
ln -sfn ~/dotfiles/tmux/layouts ~/.tmux/layouts
chmod +x ~/dotfiles/tmux/layouts/*.sh

echo "🔗 Linking vim config..."
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

echo "🔗 Linking tmuxinator configs..."
mkdir -p ~/.config/tmuxinator
for f in ~/dotfiles/tmuxinator/*.yml; do
  ln -sf "$f" ~/.config/tmuxinator/$(basename "$f")
done

echo "🔗 Linking VS Code user settings..."
mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf ~/dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

echo "✅ Linking completed!"

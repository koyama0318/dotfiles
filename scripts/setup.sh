#!/bin/zsh

set -e

echo "⚙️ Start setting up dotfiles..."

# Linking dotfiles
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

echo "🔗 Linking git config..."
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "🔗 Linking starship config..."
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "🔗 Linking asdf config..."
ln -sf ~/dotfiles/asdf/.asdfrc ~/.asdfrc
ln -sf ~/dotfiles/asdf/.tool-versions ~/.tool-versions

echo "🔗 Linking tmux config..."
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

echo "🔗 Linking vim config..."
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

echo "🔗 Linking Zed config..."
mkdir -p ~/.config/zed
ln -sf ~/dotfiles/zed/settings.json ~/.config/zed/settings.json
ln -sf ~/dotfiles/zed/keymap.json ~/.config/zed/keymap.json

echo "🔗 Linking VS Code user settings..."
mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf ~/dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# Installing VS Code extensions
sh ~/dotfiles/scripts/setup-vscode-extensions.sh

# Installing asdf plugins and versions (requires .tool-versions to be linked above)
sh ~/dotfiles/scripts/setup-asdf.sh

# Installing npm global packages (requires node via asdf)
sh ~/dotfiles/scripts/setup-npm-globals.sh

echo "✅ Setup script completed!\n"

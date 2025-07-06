#!/bin/zsh

set -e

echo "⚙️ Start setting up dotfiles..."

# Linking dotfiles
echo "🔗 Linking zsh config..."
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "🔗 Linking rio config..."
mkdir -p ~/.config/rio/themes
ln -sf ~/dotfiles/rio/themes/blight_lights.toml ~/.config/rio/themes/blight_lights.toml
ln -sf ~/dotfiles/rio/config.toml ~/.config/rio/config.toml

echo "🔗 Linking git config..."
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

echo "🔗 Linking starship config..."
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "🔗 Linking asdf config..."
ln -sf ~/dotfiles/asdf/.asdfrc ~/.asdfrc
ln -sf ~/dotfiles/asdf/.tool-versions ~/.tool-versions

echo "🔗 Linking lazygit config..."
mkdir -p ~/.config/lazygit
ln -sf ~/dotfiles/lazygit/config.yml ~/.config/lazygit/config.yml

echo "🔗 Linking vim config..."
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

echo "🔗 Linking neovim config..."
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Installing asdf plugins and versions
sh ~/dotfiles/scripts/setup-asdf.sh

echo "✅ Setup script completed!\n"

#!/bin/zsh

set -e

echo "⚙️ Start setting up dotfiles..."

sh ~/dotfiles/scripts/link.sh

# Installing npm global packages
sh ~/dotfiles/scripts/setup-npm-globals.sh

echo "✅ Setup script completed!"

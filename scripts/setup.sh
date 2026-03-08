#!/bin/zsh

set -e

echo "⚙️ Start setting up dotfiles..."

sh ~/dotfiles/scripts/link.sh

# Installing asdf plugins and versions (requires .tool-versions to be linked above)
sh ~/dotfiles/scripts/setup-asdf.sh

# Installing npm global packages (requires node via asdf)
sh ~/dotfiles/scripts/setup-npm-globals.sh

echo "✅ Setup script completed!"

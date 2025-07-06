#!/bin/zsh

echo "🔧 Installing asdf plugins and versions..."

# Install plugins
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add bun https://github.com/cometkim/asdf-bun.git

# Import Node.js release team's OpenPGP keys to main keyring
# zsh -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# Install versions from .tool-versions
asdf install

asdf set -u node 22.17.0 
asdf set -u bun 1.2.17 

echo "✅ asdf setup completed!"

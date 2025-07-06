#!/bin/zsh

echo "📚 Pre-install script start..."

# brew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# just
if ! command -v just &> /dev/null; then
    echo "Installing just..."
    brew install just
fi

# rio
brew install --cask rio

# Hack Nerd Font
echo "Installing Hack Nerd Font..."
brew install --cask font-hack-nerd-font

# zsh
if ! command -v zsh &> /dev/null; then
    echo "Installing zsh..."
    brew install zsh
fi

# zinit
export ZINIT_HOME="${ZDOTDIR:-$HOME}/.zinit"
if [[ ! -f "${ZINIT_HOME}/bin/zinit.zsh" ]]; then
    echo "Installing zinit..."
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
    source ~/.zshrc
fi

echo "✅ Pre-install script completed!\n"
echo "Restart your terminal to apply changes!\n"

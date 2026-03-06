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

# Hack Nerd Font
HACK_FONT="${HOME}/Library/Fonts/HackNerdFont-Bold.ttf"
if brew list --cask font-hack-nerd-font &>/dev/null; then
    echo "Hack Nerd Font already installed (brew), skipping."
elif [[ -f "$HACK_FONT" ]]; then
    echo "Hack Nerd Font already present in ~/Library/Fonts, skipping."
else
    echo "Installing Hack Nerd Font..."
    brew install --cask font-hack-nerd-font
fi

# zsh
if ! command -v zsh &> /dev/null; then
    echo "Installing zsh..."
    brew install zsh
fi

# zinit（既存ディレクトリの場合は pull、無い/壊れている場合は clone）
export ZINIT_HOME="${ZDOTDIR:-$HOME}/.zinit"
if [[ -f "${ZINIT_HOME}/bin/zinit.zsh" ]]; then
    echo "zinit already installed, updating..."
    (cd "$ZINIT_HOME" && git pull)
elif [[ -d "${ZINIT_HOME}/.git" ]]; then
    echo "Updating zinit..."
    (cd "$ZINIT_HOME" && git pull)
else
    echo "Installing zinit..."
    if [[ -d "$ZINIT_HOME" ]]; then
        rm -rf "$ZINIT_HOME"
    fi
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

echo "✅ Pre-install script completed!\n"
echo "Restart your terminal to apply changes!\n"

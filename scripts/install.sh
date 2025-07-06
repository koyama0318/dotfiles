#!/bin/zsh

echo "🍺 Installing Homebrew packages..."

# starship
if ! command -v starship &> /dev/null; then
    echo "Installing starship..."
    brew install starship
fi

# asdf
if ! command -v asdf &> /dev/null; then
    echo "Installing asdf..."
    brew install asdf
fi

# git
if ! command -v git &> /dev/null; then
    echo "Installing git..."
    brew install git
fi

# lazygit
if ! command -v lazygit &> /dev/null; then
    echo "Installing lazygit..."
    brew install lazygit
fi

# neovim
if ! command -v nvim &> /dev/null; then
    echo "Installing neovim..."
    brew install neovim
fi

# eza
if ! command -v eza &> /dev/null; then
    echo "Installing eza..."
    brew install eza
fi

# tree
if ! command -v tree &> /dev/null; then
    echo "Installing tree..."
    brew install tree
fi

# neofetch
if ! command -v neofetch &> /dev/null; then
    echo "Installing neofetch..."
    brew install neofetch
fi

echo "✅ Install script completed!\n"

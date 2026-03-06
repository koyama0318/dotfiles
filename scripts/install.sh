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

# tmux
if ! command -v tmux &> /dev/null; then
    echo "Installing tmux..."
    brew install tmux
fi

# fzf (fzf-tab dependency)
if ! command -v fzf &> /dev/null; then
    echo "Installing fzf..."
    brew install fzf
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

# Ghostty (terminal)
if ! brew list --cask ghostty &> /dev/null; then
    echo "Installing Ghostty..."
    brew install --cask ghostty
fi

# Warp (terminal)
if ! brew list --cask warp &> /dev/null; then
    echo "Installing Warp..."
    brew install --cask warp
fi

# Zed
ZED_APP="/Applications/Zed.app"
if ! brew list --cask zed &> /dev/null && [[ ! -d "$ZED_APP" ]]; then
    echo "Installing Zed..."
    brew install --cask zed
elif [[ -d "$ZED_APP" ]] && ! brew list --cask zed &> /dev/null; then
    echo "Zed is already installed at $ZED_APP (skipping brew install)"
fi

# VS Code
VSCODE_APP="/Applications/Visual Studio Code.app"
if ! brew list --cask visual-studio-code &> /dev/null && [[ ! -d "$VSCODE_APP" ]]; then
    echo "Installing VS Code..."
    brew install --cask visual-studio-code
elif [[ -d "$VSCODE_APP" ]] && ! brew list --cask visual-studio-code &> /dev/null; then
    echo "VS Code is already installed at $VSCODE_APP (skipping brew install)"
fi

echo "✅ Install script completed!\n"

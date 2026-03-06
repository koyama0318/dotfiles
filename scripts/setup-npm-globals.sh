#!/bin/zsh

echo "📦 Installing npm global packages..."

if ! command -v npm &>/dev/null; then
    echo "npm not found. Skipping."
    exit 0
fi

npm install -g @anthropic-ai/claude-code

echo "✅ npm globals setup completed!"

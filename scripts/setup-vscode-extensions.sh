#!/bin/zsh

EXTENSIONS_FILE=~/dotfiles/vscode/extensions.txt
[[ ! -f "$EXTENSIONS_FILE" ]] && exit 0

echo "📦 Installing VS Code extensions..."

if command -v code &>/dev/null; then
    while read -r id; do
        [[ -z "$id" || "$id" == \#* ]] && continue
        code --install-extension "$id" &>/dev/null || true
    done < "$EXTENSIONS_FILE"
fi

echo "✅ VS Code extensions setup completed!"

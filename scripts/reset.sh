#!/bin/zsh

set -e

# Dotfiles root (same as setup.sh)
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/dotfiles}"

# Symlinks created by setup.sh (target path -> no source needed for removal)
SYMLINKS=(
  "$HOME/.claude/settings.json"
  "$HOME/.claude/CLAUDE.md"
  "$HOME/.zshrc"
  "$HOME/.config/ghostty/themes/blight_lights"
  "$HOME/.config/ghostty/config"
  "$HOME/.gitconfig"
  "$HOME/.config/zed/settings.json"
  "$HOME/.config/zed/keymap.json"
  "$HOME/.config/starship.toml"
  "$HOME/.asdfrc"
  "$HOME/.tool-versions"
  "$HOME/.vimrc"
  "$HOME/Library/Application Support/Code/User/settings.json"

)

# Remove symlink only if it exists, is a symlink, and points to this dotfiles repo.
# Idempotent: safe to run multiple times.
remove_symlink_if_from_dotfiles() {
  local target="$1"
  if [[ ! -e "$target" ]]; then
    return 0
  fi
  if [[ ! -L "$target" ]]; then
    echo "⏭️  Skipping $target (not a symlink, leaving as-is)"
    return 0
  fi
  local link_target
  link_target=$(readlink "$target")
  # Normalize: expand relative path to absolute for comparison
  if [[ "$link_target" != /* ]]; then
    local dir
    dir=$(dirname "$target")
    link_target=$(cd "$dir" && cd "$(dirname "$link_target")" && pwd)/$(basename "$link_target")
  fi
  if [[ "$link_target" == "$DOTFILES_DIR"* ]]; then
    echo "🗑️  Removing symlink: $target"
    rm "$target"
  else
    echo "⏭️  Skipping $target (symlink not from this dotfiles repo)"
  fi
}

echo "🔄 Resetting dotfiles (removing symlinks only)..."

for target in "${SYMLINKS[@]}"; do
  remove_symlink_if_from_dotfiles "$target"
done

echo "✅ Reset script completed."

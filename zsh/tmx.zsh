function tmx() {
  local dir="${1:?Usage: tmx <directory>}"

  if [[ ! -d "$dir" ]]; then
    echo "Directory not found: $dir"
    return 1
  fi
  dir=$(cd "$dir" && pwd)

  tmuxinator start tmx-root dir="$dir"
  tmuxinator start tmx-main dir="$dir"
  tmuxinator start tmx-sub1 dir="$dir"
  tmuxinator start tmx-sub2 dir="$dir"

  tmux attach -t main
}

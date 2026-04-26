#!/bin/sh
input=$(cat)

raw_cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // ""')
model=$(echo "$input" | jq -r '.model.display_name // ""')
session_id=$(echo "$input" | jq -r '.session_id // ""')
used_pct=$(echo "$input" | jq -r '.context_window.used_percentage // empty')
worktree_name=$(echo "$input" | jq -r '.worktree.name // empty')
rate_pct=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')

# Shorten directory (truncate to last 3 segments, prefix ~/ like starship)
home="$HOME"
cwd="$raw_cwd"
if echo "$cwd" | grep -q "^$home"; then
  cwd="~${cwd#$home}"
fi
# Truncate to last 3 path segments
seg_count=$(echo "$cwd" | tr -cd '/' | wc -c | tr -d ' ')
if [ "$seg_count" -gt 3 ]; then
  cwd="~/$(echo "$cwd" | rev | cut -d'/' -f1-3 | rev)"
fi

# Git branch
branch=$(git -C "$raw_cwd" --no-optional-locks rev-parse --abbrev-ref HEAD 2>/dev/null)

# Git status: staged and modified counts (mirrors starship git_status)
if [ -n "$branch" ]; then
  staged=$(git -C "$raw_cwd" --no-optional-locks diff --cached --name-only 2>/dev/null | wc -l | tr -d ' ')
  modified=$(git -C "$raw_cwd" --no-optional-locks diff --name-only 2>/dev/null | wc -l | tr -d ' ')
fi

# Time
now=$(date +%H:%M:%S)

# ---------------------------------------------------------------------------
# Helper: build a 10-segment bar for a given percentage value
# $1 = percentage (integer 0-100), $2 = filled char, $3 = empty char
# Prints ANSI-colored bar: green 0-60, yellow 60-85, red 85+
# ---------------------------------------------------------------------------
make_bar() {
  _pct="$1"
  _filled="$2"
  _empty="$3"
  _pct_int=$(printf '%.0f' "$_pct" 2>/dev/null)
  _segs=$(( _pct_int / 10 ))
  [ "$_segs" -gt 10 ] && _segs=10

  # Pick color based on percentage
  if [ "$_pct_int" -ge 85 ]; then
    _color='\033[31m'   # red
  elif [ "$_pct_int" -ge 60 ]; then
    _color='\033[33m'   # yellow
  else
    _color='\033[32m'   # green
  fi
  _reset='\033[0m'
  _dim='\033[2m'

  _bar=""
  i=0
  while [ "$i" -lt 10 ]; do
    if [ "$i" -lt "$_segs" ]; then
      _bar="${_bar}$(printf "${_color}%s${_reset}" "$_filled")"
    else
      _bar="${_bar}$(printf "${_dim}%s${_reset}" "$_empty")"
    fi
    i=$(( i + 1 ))
  done
  printf '%s' "$_bar"
}

# ---------------------------------------------------------------------------
# LINE 1 — Starship-mirrored: directory git_branch git_status time
# ---------------------------------------------------------------------------
line1=""

# directory
line1="$(printf '\033[36m%s\033[0m' "$cwd")"

# git branch
if [ -n "$branch" ]; then
  line1="${line1} $(printf '\033[2mon\033[0m') $(printf '\033[35m%s\033[0m' "$branch")"
  if [ -n "$worktree_name" ]; then
    line1="${line1}$(printf '\033[33m(%s)\033[0m' "$worktree_name")"
  fi
fi

# git status staged/modified
if [ -n "$branch" ]; then
  git_status_str=""
  if [ "$staged" -gt 0 ] 2>/dev/null; then
    git_status_str="${git_status_str}$(printf '\033[32m S%s\033[0m' "$staged")"
  fi
  if [ "$modified" -gt 0 ] 2>/dev/null; then
    git_status_str="${git_status_str}$(printf '\033[33m C%s\033[0m' "$modified")"
  fi
  if [ -n "$git_status_str" ]; then
    line1="${line1} $(printf '\033[2mwith\033[0m')${git_status_str}"
  fi
fi

# time
line1="${line1} $(printf '\033[2mat\033[0m') ${now}"

# ---------------------------------------------------------------------------
# LINE 2 — Session ID (first 8 chars) + model name
# ---------------------------------------------------------------------------
dim='\033[2m'
bold='\033[1m'
reset='\033[0m'
sep=" $(printf "${dim}|${reset}") "

line2="$(printf "${dim}session:${reset}") $(printf "${bold}%s${reset}" "$session_id")${sep}$(printf "${dim}model:${reset}") $(printf "${dim}%s${reset}" "$model")"

# ---------------------------------------------------------------------------
# LINE 3 — Context usage bar + rate limit bar
# ---------------------------------------------------------------------------

# Context bar
if [ -n "$used_pct" ]; then
  ctx_pct_int=$(printf '%.0f' "$used_pct")
  ctx_bar=$(make_bar "$used_pct" '●' '○')
  ctx_field="$(printf "${dim}ctx:${reset}") $(printf "${bold}%3d%%${reset}" "$ctx_pct_int") ${ctx_bar}"
else
  ctx_field="$(printf "${dim}ctx: --${reset}")"
fi

# Rate limit bar (5-hour window when available)
if [ -n "$rate_pct" ]; then
  rate_pct_int=$(printf '%.0f' "$rate_pct")
  rate_bar=$(make_bar "$rate_pct" '●' '○')
  rate_field="$(printf "${dim}rate:${reset}") $(printf "${bold}%3d%%${reset}" "$rate_pct_int") ${rate_bar}"
else
  rate_field="$(printf "${dim}rate: --${reset}")"
fi

line3="${ctx_field}${sep}${rate_field}"

# ---------------------------------------------------------------------------
# Output all three lines
# ---------------------------------------------------------------------------
printf '%s\n%s\n%s' "$line1" "$line2" "$line3"

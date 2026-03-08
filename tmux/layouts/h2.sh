#!/usr/bin/env bash
# h2: Two horizontal panes
# ── pane1 ──
# ── pane2 ──

tmux new-window
WINDOW=$(tmux display-message -p '#{window_id}')

tmux split-window -v -t "$WINDOW"
tmux select-layout -t "$WINDOW" even-vertical
tmux select-pane -t "$WINDOW.1"

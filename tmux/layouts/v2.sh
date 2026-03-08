#!/usr/bin/env bash
# v2: Two vertical panes  | pane1 | pane2 |

tmux new-window
WINDOW=$(tmux display-message -p '#{window_id}')

tmux split-window -h -t "$WINDOW"
tmux select-layout -t "$WINDOW" even-horizontal
tmux select-pane -t "$WINDOW.1"

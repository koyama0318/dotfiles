#!/usr/bin/env bash
# v4: Four vertical panes  | p1 | p2 | p3 | p4 |

tmux new-window
WINDOW=$(tmux display-message -p '#{window_id}')

tmux split-window -h -t "$WINDOW"
tmux split-window -h -t "$WINDOW"
tmux split-window -h -t "$WINDOW"
tmux select-layout -t "$WINDOW" even-horizontal
tmux select-pane -t "$WINDOW.1"

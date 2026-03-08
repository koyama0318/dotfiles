#!/usr/bin/env bash
# g4: 2x2 grid layout
# | p1 | p2 |
# | p3 | p4 |

tmux new-window
WINDOW=$(tmux display-message -p '#{window_id}')

P1=$(tmux display-message -p '#{pane_id}')

tmux split-window -h -t "$P1"
P2=$(tmux display-message -p -t "$WINDOW.2" '#{pane_id}')

tmux split-window -v -t "$P1"
tmux split-window -v -t "$P2"

tmux select-layout -t "$WINDOW" tiled
tmux select-pane -t "$WINDOW.1"

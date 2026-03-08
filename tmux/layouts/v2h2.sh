#!/usr/bin/env bash
# v2h2: Vertical 2 split, right pane split horizontal
# | left | right-top    |
# |      | right-bottom |

tmux new-window
WINDOW=$(tmux display-message -p '#{window_id}')

P1=$(tmux display-message -p '#{pane_id}')

tmux split-window -h -t "$P1"
P2=$(tmux display-message -p -t "$WINDOW.2" '#{pane_id}')

tmux split-window -v -t "$P2"

tmux select-pane -t "$WINDOW.1"

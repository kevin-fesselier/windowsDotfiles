#!/bin/bash
# move to mcrb directory
cd ~/repos/mcrb2.0/
# Session Name
session="mcrb"

# Start New Session with our name
tmux new-session -d -s $session

# Rename main window and create a new one
tmux rename-window -t 0 'IDE'
tmux new-window -t $session:1 -n 'Tools'

# Create new pane in both windows
tmux split-window -h
tmux select-window -t $session:0
tmux split-window -h

# Resize main pane and fire vim
tmux select-pane -t 0
tmux resize-pane -R 50
tmux send-keys -t $session:0 "vim" C-m

#and attach
tmux attach-session -t $SESSION:0

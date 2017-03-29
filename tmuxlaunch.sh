SESSION=main
WINDOW=${SESSION}:0
PANE=${WINDOW}.0

tmux new-session -d -s $SESSION

# tmux new-window -t $SESSION:1 -n 'main'
tmux select-window -t $SESSION:0
tmux split-window -h
tmux split-window -v

tmux send-keys 'htop' C-m
tmux resize-pane -D 24
tmux resize-pane -R 20

tmux select-pane -t $PANE

tmux attach-session -t main


# tmux new-window -t $SESSION:2 -n 'secondary-1'


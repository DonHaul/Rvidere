ssh sipg@$1 << EOF
bash ~/UpBoard-FeedBot/shellscripts/history.sh STOP
tmux kill-session -t ros
EOF

ssh sipg@$1 << EOF
source ~/UpBoard-FeedBot/catkin_ws/devel/setup.bash
tmux kill-session -t ros
EOF

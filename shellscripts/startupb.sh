ssh sipg@$1 << EOF
source UpBoard-FeedBot/catkin_ws/devel/setup.bash
tmux new-session -d -s ros
tmux send-keys -t "ros" 'bash UpBoard-FeedBot/shellscripts/lookandstart.sh' Enter
EOF

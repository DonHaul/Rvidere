ssh sipg@$1 << EOF
source UpBoard-FeedBot/catkin_ws/devel/setup.bash
tmux new-session -d -s lol2

tmux send-keys -t "lol2" 'bash UpBoard-FeedBot/shellscripts/hello2.sh' Enter
#tmux send-keys -t "lol2" 'bash UpBoard-FeedBot/shellscripts/history.sh START' Enter
#tmux send-keys -t "lol2" 'echo what2' Enter
#tmux send-keys -t "lol2" "var=lol" Enter
#tmux send-keys -t "lol2" "echo $var" Enter
#tmux send-keys -t "lol2" 'echo whatnnn' Enter
#tmux send-keys -t "lol2" $("line=$(grep metro03 UpBoard-FeedBot/sysconfig.txt)") Enter
#tmux send-keys -t "lol2" 'echo what3' Enter
#tmux send-keys -t "lol2" 'camname=$(echo $line | cut -d " " -f 3)
#tmux send-keys -t "lol2" 'echo what' Enter
#tmux send-keys -t "lol2" 'echo "what"' Enter
#tmux send-keys -t "lol2" 'echo $camname' Enter
EOF

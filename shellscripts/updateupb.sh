ssh sipg@$1 << EOF

cd ./UpBoard-FeedBot/
git pull
bash shellscripts/history.sh PULL
EOF
echo doingotherstuff
tmux kill-session
bash $(shellscripts/history.sh PUSHEDINTO_$1)
ssh sipg@$1 << EOF
cd ./UpBoard-FeedBot/
pwd
git pull
bash shellscripts/history.sh PULL
EOF
bash $(shellscripts/history.sh PUSHEDINTO_$1)
echo $1
ssh sipg@$1 << EOF
cd ./UpBoard-FeedBot/
pwd
git pull
DonHaul
EOF
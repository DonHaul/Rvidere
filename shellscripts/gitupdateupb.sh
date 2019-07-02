echo $1
ssh sipg@$1 << EOF
cd ./UpBoard-FeedBot/
pwd
git pull
echo PULLADD
bash shellscripts/historic.sh PULL
echo PULL DONE
EOF
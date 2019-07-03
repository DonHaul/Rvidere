ssh sipg@$1 << EOF
bash UpBoard-FeedBot/shellscripts/history.sh REBOOT
reboot
EOF
bash $(shellscripts/history.sh REBOOT_$1)
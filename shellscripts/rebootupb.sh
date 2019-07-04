ssh sipg@$1 << EOF
bash ~/ UpBoard-FeedBot/shellscripts/history.sh REBOOT
tmux new-session -d -s "reboot" "sudo reboot"
EOF
bash $(shellscripts/history.sh REBOOT_$1)
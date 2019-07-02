ssh sipg@$1 << EOF
bash shellscripts/history.sh REBOOT
reboot
EOF
bash $(shellscripts/history.sh REBOOT_$1)
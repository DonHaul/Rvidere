ssh sipg@$1 << EOF
bash shellscripts/history.sh ADDED
if ! grep -q "source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh" ~/.bashrc
then echo "SUCCESSFULLY ADDED"
echo 'source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh' >> ~/.bashrc
else
echo "THIS UPBOARD WAS ALREADY ADDED"
fi

EOF

#ADD CHECKS HERE IF THE UPBOARD HAS THE REPO HAS ROS AND HAS THE REALSESNE realsense_camera/  LIBRARY


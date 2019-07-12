
git clone https://github.com/DonHaul/UpBoard-FeedBot
sed -i 'source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh' ~/.bashrc
sed -i 'source /opt/ros/kinetic/setup.bash' ~/.bashrc
line=$(grep $(hostname) UpBoard-FeedBot/sysconfig.txt)

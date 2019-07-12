
git clone https://github.com/DonHaul/UpBoard-FeedBot


if grep -q "/home/sipg/UpBoard-FeedBot" ~/.bashrc
then 
echo("FILE ALREADY THERE")
else
sed -i 'source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh' 
sed -i 'source /opt/ros/kinetic/setup.bash' ~/.bashrc
echo("FILEs Have Been Added")

#rerun bash
source ~/.bashrc
fi



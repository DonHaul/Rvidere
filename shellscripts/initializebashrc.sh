
git clone https://github.com/DonHaul/UpBoard-FeedBot
git pull

if grep -q "/home/sipg/UpBoard-FeedBot" ~/.bashrc
then 
echo "FILE ALREADY THERE"
else
sed -i '1s/^/source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh'  ~/.bashrc
sed -i '1s/^/source /opt/ros/kinetic/setup.bash' ~/.bashrc
echo("FILEs Have Been Added")

#rerun bash
source ~/.bashrc
fi



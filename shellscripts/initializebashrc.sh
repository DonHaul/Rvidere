
git clone https://github.com/DonHaul/UpBoard-FeedBot
git pull

if grep -q "/home/sipg/UpBoard-FeedBot" ~/.bashrc
then 
echo "FILE ALREADY THERE"
else
$ola="/source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh"
$ola2="/source /opt/ros/kinetic/setup.bash"
sed -i '1i\'"$ola" ~/.bashrc
sed -i '1i\'"$ola2" ~/.bashrc

echo "FILEs Have Been Added"
#rerun bash
source ~/.bashrc
fi



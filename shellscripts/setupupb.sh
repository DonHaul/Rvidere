ssh -t sipg@$1 << EOF

if grep -q "/home/sipg/UpBoard-FeedBot" ~/.bashrc
then 
echo "FILE ALREADY THERE"
else
$ola="source /home/sipg/UpBoard-FeedBot/shellscripts/setup.sh"
$ola2="source /opt/ros/kinetic/setup.bash"
sed -i '1i\'"$ola" ~/.bashrc
sed -i '1i\'"$ola2" ~/.bashrc

echo "FILEs Have Been Added"
#rerun bash
fi


git clone https://github.com/DonHaul/UpBoard-FeedBot
git pull


cd UpBoard-FeedBot/catkin_ws
catkin_make
cd ../..

#install ros

echo isrist |sudo -S sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
echo y |sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
echo y |sudo apt-get update --force-yes
echo y |sudo apt-get install ros-kinetic-ros-base --force-yes
echo y |sudo apt-get install 'ros-*-realsense-camera'
echo y | sudo apt install tmux

source ~/.bashrc


#check if host is already there
if grep -q "metro_server01" 
then 
echo "FILE ALREADY THERE"
else
$ola="10.0.26.172     metro_server01"

sed -i '1i\'"10.0.26.172     metro_server01" /etc/hosts


echo "FILEs Have Been Added"
#rerun bash
fi




EOF

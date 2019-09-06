echo "scriptrunning"
source UpBoard-FeedBot/catkin_ws/devel/setup.bash
bash UpBoard-FeedBot/shellscripts/history.sh START
line=$(grep $(hostname) UpBoard-FeedBot/sysconfig.txt)
echo $line
camname=$(echo $line | cut -d " " -f 3)
#roslaunch realsense_camera  zr300_nodelet_rgbd.launch
roslaunch multiple_realsense $camname.launch
#echo $camname
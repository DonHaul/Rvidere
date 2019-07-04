echo "scriptrunning"
#source UpBoard-FeedBot/catkin_ws/devel/setup.bash
bash UpBoard-FeedBot/shellscripts/history.sh START
line=$(grep metro03 UpBoard-FeedBot/sysconfig.txt)
camname=$(echo $line | cut -d " " -f 3)
roslaunch realsense_camera  zr300_nodelet_rgbd.launch
#echo $camname
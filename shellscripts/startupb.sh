ssh sipg@$1 << EOF
source UpBoard-FeedBot/catkin_ws/devel/setup.bash

bash UpBoard-FeedBot/shellscripts/history.sh START
line=$(grep metro03 UpBoard-FeedBot/sysconfig.txt)
camname=$(echo $line | cut -d " " -f 3)
echo "what"
echo $camname
echo jeff
#tmux new-session -d -s lol "echo hey"
#tmux send-key -t lol "echo jeff"
#tmux new-session -d -s ros "roslaunch multiple_realsense speedwagon.launch"
#tmux new-session -d -s ros "roslaunch realsense_camera  zr300_nodelet_rgbd.launch"
EOF
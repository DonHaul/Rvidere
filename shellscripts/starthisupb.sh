list=$(grep "metro03" sysconfig.txt)
set -- $list
echo nani
echo $3
source /opt/ros/kinetic/setup.bash
roslaunch multiple_realsense speedwagon.launch
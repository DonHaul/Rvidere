list=$(grep "metro03" sysconfig.txt)
set -- $list
echo nani
echo $3
roslaunch multiple_realsense speedwagon.launch
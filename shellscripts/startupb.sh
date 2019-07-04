gnome-terminal -e "ssh sipg@$1 << EOF
roslaunch realsense_camera zr300_nodelet_default.launch
EOF"
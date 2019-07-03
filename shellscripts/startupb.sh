ssh sipg@$1 << EOF
cd cd UpBoard-FeedBot/
bash shellscripts/history.sh START
mydir=$(dirname "$0")
list=$(grep "metro03" $mydir/../sysconfig.txt)
set -- $list
echo $3
roslaunch "multiple_realsense $3.launch"

EOF
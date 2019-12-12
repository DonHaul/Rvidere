input="../sysconfig.txt"

tmux new-session -d -s "ros" "roscore"
tmux new-session -d -s "syncers" "roslaunch multiple_realsense timesyncAll.launch"

mydir=$(dirname "$0")
#get first word of each line
cams=$(cut -d' ' -f1 $mydir/../sysconfig.txt)


count=0
for one_thing in $cams; do
   
    #goes throw every single one except the first one
    if [ "$count" != "0" ]; then
     tmux new-session -d -s "ssh_$one_thing" "bash $mydir/startupb.sh $one_thing"
    fi

    ((count++))
    #echo $count
done

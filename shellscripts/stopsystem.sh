
tmux kill-session -t ros
tmux kill-session -t syncers


#gets script directory
mydir=$(dirname "$0")
#get first word of each line
cams=$(cut -d' ' -f1 $mydir/../sysconfig.txt)
echo $cams
echo jeff

count=0
for one_thing in $cams; do
   
    #goes throw every single one except the first one
    if [ "$count" != "0" ]; then
     tmux new-session -d -s "ssh_$one_thing" "bash $mydir/stopupb.sh $one_thing"
    fi

    ((count++))
    #echo $count
done

   
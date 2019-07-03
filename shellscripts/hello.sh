mydir=$(dirname "$0")
list=$(grep "metro03" $mydir/../sysconfig.txt)
set -- $list
echo $3

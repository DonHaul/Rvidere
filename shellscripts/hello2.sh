echo "scriptrunning"
bash UpBoard-FeedBot/shellscripts/history.sh START
echo what2
var=lol
echo $var
echo whatnnn
line=$(grep metro03 UpBoard-FeedBot/sysconfig.txt)
echo what3
camname=$(echo $line | cut -d " " -f 3)
echo what
echo "what"
echo $camname
input="../sysconfig.txt"

elements=$(cut  -f 1 -d' ' $input)



count=1

#reads each line of a file "input" at a time
while read -r line
do
echo "LINE IS $line"



#convert line string to array
IFS=' ' read -a arr <<< "$line"

#print whole array
#echo "ARRR ${arr[@]}"
toreplace=${arr[1]}
ln=$line
echo "$toreplace"

#array lenght
length=${#arr[@]}
#print arrayy length chek if array lenght greater than 1
if ((length > 1)); then
    arr[1]=$ip




#incase it is the first line, just do a replace
if ((count==1)); then
#configure first element

#get its ip
ip=$("./GetMyIp.sh")

#replace in original string
ln=${ln/$toreplace/$ip}

#put string back in file
sed -i "$count s/.*/$ln/" $input
((count++))
else


echo "DOTN WRIYTE"
fi
fi
echo $count
#increments one

#specifies the file
done < "$input"

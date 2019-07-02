#gets script directory
mydir=$(dirname "$0")

#goes to parent directory
cd "$mydir/.."

#creates if it doesnt exist yet, the historic.log file
touch historic.log

#formats date
data=$(date +"%I:%M:%S %d/%m/%Y")

#joins date and argument
towrite="$1\t$data"

#adds to begining of file
sed -i "1i $towrite" $mydir/../historic.log
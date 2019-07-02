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
echo $towrite

#adds to begining of file
echo $towrite | cat - history.log > temp && mv temp history.log
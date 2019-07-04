git add .

if [ -z "$1" ]
then
    echo "put commit message next time!"
      git commit -m "-"
else
      git commit -m $1
fi
git push
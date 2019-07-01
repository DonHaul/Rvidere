ip="$(ifconfig | grep -m 1 'inet addr:'|cut -d ':' -f 2 | cut -d ' ' -f 1)"
echo $ip



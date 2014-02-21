#!/bin/bash 
i=50
start=`date +%s`
while [ $i -ne 0 ]
do
	curl 192.168.56.101:100/testfile.pdf > /dev/null &
	#curl localhost:1000/images/ship.jpg > /dev/null 
	i=$[$i-1]

done
wait
end=`date +%s`
dif=$[ end - start ]
echo $dif




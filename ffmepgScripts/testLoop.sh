
# The following script is a loop that plays a recorded video though a super bad ass video player!

#!/bin/bash

COUNTER=0

while [ $COUNTER -lt 10 ];
do
	echo The counter is $COUNTER
	mplayer -vo caca 2016-09-05-113952.webm
	let COUNTER=COUNTER+1
done

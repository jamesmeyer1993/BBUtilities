#!/bin/sh
#
# auto_shutdown.sh
# - checks the time every 5 minutes and if it is 10:00 PM, or 22:00,
# the script shuts the computer down

while :
do
	TIME=$(date)
	touch date_fi.txt
	echo $TIME > date_fi.txt
	VAR=$(grep -c " 22:" date_fi.txt)

	if [ $VAR = 1 ] ;
		then
		shutdown now
	fi

	sleep 300
done

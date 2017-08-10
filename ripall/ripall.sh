range=$1
count=0

while [ $count -lt $1 ];
do
	echo "The counter is $count"
	mplayer -dumpstream dvd://$count -nocache -dumpfile "Mov$count.mpg"
	count=$[$count + 1]
done

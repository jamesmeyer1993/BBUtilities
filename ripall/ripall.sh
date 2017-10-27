# ripall.sh
# - calls mplayer within a loop to rip all encoded videos of a disk
#	and store in mpg format.

range=$1
count=0

while [ $count -lt $1 ];
do
	echo "The counter is $count"
	mplayer -dumpstream dvd://$count -nocache -dumpfile "Mov$count.mpg"
	count=$[$count + 1]
done

#!/bin/bash

while true; do

ls $filename

if [ $? != 0 ]; then 
echo "file $filename not found"
continue
else
ping -c1 $superip 2>/dev/null

	if [ $? != 0 ]; then 
		echo "Host $IP not found"
		continue
	else
		echo "Host $IP found"
		echo "Sending file...."
		rm $filename
	fi
fi
done;

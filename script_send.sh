#!/bin/bash

while true; do

sleep $superperiod

ls $superfile

if [ "$?" -ne 0 ]; then 
	continue
else
	ping -c1 -W100 $superip 

	if [ "$?" -eq 0 ]; then 
		echo "Sending file...."
		rm $filename
	fi
fi
done;

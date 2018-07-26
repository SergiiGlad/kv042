#!/bin/bash

while true; do

if [ $(( SP > 0 )) == 1 ]; then
sleep "$((SP))" 
else 
sleep 1s
fi

ls "$SUPERFILE" >/dev/null 2>&1

if [ "$?" -ne 0 ]; then 
	echo "+++ $SUPERFILE file not found"	
	echo "+++ waiting superperiod $SP to send file name : $SUPERFILE"
	echo ""
	continue
else
	ping -c1 -W100 $SUPERIP

	if [ "$?" -eq 0 ]; then 
		echo "+++ try to send file $SUPERFILE...."
		nc $SUPERIP $SUPERPORT < $SUPERFILE
		if [ "$?" -eq 0 ]; then 
			echo "+++ SUCCESS $SUPERFILE sent."
			rm $SUPERFILE
		fi
	fi
fi
done;

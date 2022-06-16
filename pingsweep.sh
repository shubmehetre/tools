#!/bin/bash

# Checks for live hosts for a perticular network id

if [ "$1" == "" ]
then
	echo "Usage: ./pingsweep.sh [ network id ]"
	echo "Example: ./pingsweep.sh 8.8.8"
else
	echo "Following are live Hosts"
	echo ""
	for i in `seq 1 254`; do
		ping -c 1 $1.$i | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'
	done
fi

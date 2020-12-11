#!/bin/bash

echo "Welcome FlipCoin Problem"

heads=0
tails=1
headCount=0
tailCount=0
for (( i=1; i>0; i++ ))
do

	coin=$((RANDOM%2));
	if [ $coin -eq 1 ];
	then
		headCount=$(( $headCount + 1 ))
		if [ $headCount -eq 21 ]
		then
			result=$((headCount-tailCount))
			echo "heads win by $result diff";
			exit
		fi
	fi

	if [ $coin -eq 0 ];
        then
               	tailCount=$(( $tailCount + 1 ))
                if [ $tailCount -eq 21 ]
		then
			result=$((tailCount-headCount))
                	echo "tails win by $result diff";
                	exit
		fi
        fi
done

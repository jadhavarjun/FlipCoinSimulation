#!/bin/bash

echo "Welcome FlipCoin Problem"

heads=1
tails=0
headCount=0
tailCount=0
for (( i=1; i>0; i++ ))
do

	coin=$((RANDOM%2));
	if [ $coin -eq 1 ];
	then
		headCount=$(( $headCount + 1 ))
		result=$((headCount - tilaCount))
		if [ $result -eq 10 ]
		then
			echo "heads win by 2 digit diff";
			echo $i
			exit
		fi
	fi

	if [ $coin -eq 0 ];
        then
               	tailCount=$(( $tailCount + 1 ))
		result2=$((tailCount - headCount))
                if [ $result2 -eq 10 ]
		then
                	echo "tails win by 2digit diff";
			echo $i
                	exit
		fi
        fi
done

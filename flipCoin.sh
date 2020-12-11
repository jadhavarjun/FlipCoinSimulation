#!/bin/bash -x

echo "Welcome FlipCoin Problem"

heads=0
tails=1
headCount=0
tailCount=0
for (( i=1; i<=20; i++ ))
do

	coin=$((RANDOM%2));
	if [ $coin -eq 1 ];
	then
		headCount=$(( $headCount + 1 ))
	fi

	if [ $coin -eq 0 ];
        then
               	tailCount=$(( $tailCount + 1 ))
        fi
done

echo "heads is $headCount"
echo "tails is $tailCount"

#! /bin/bash

Heads=1
Tails=0

randNumber=$((RANDOM%2))

if [ $randNumber -eq $Heads ]
then
	echo "HEADS"
elif [ $randNumber -eq $Tails ]
then
	echo "TAILS"
fi

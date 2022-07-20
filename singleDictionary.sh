#! /bin/bash 

Heads=1
Tails=0

read -p "How many times u want to flip a coin: " n
j=0

for((i=0;i<n;i++))
do
	randNumber=$((RANDOM%2))
	if [ $randNumber -eq $Heads ]
	then
		echo "HEADS"
		N=$((++HEADS))
		flip["$j"]="H"
	else
		echo "TAILS"
		M=$((++TAILS))
		flip["$j"]="T"
	fi
j=$((++j))
done

echo ${flip[@]}
echo ${!flip[@]}

P=$((($N* 100)/$n))
Q=$((($M* 100)/$n))

echo "Head Apperse in Time: "$N "Times"
echo "Head Appears in Percentage: "$P

echo "Tail Appears in Time: "$M "Times"
echo "Tail Appear in Percentage: "$Q

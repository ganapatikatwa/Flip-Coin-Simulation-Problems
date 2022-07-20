#! /bin/bash 

declare -A flip
declare -A flipPercentage
read -p "How many times u want to flip a coin: " n

j=0
x=0
y=0
z=0

for((i=0;i<n;i++))
do
	randNumber=$((RANDOM%4))
	if [ $randNumber -eq 0 ]
	then
		x=$((++HH))
	elif [ $randNumber -eq 1 ]
	then
		y=$((++HT))
	elif [ $randNumber -eq 2 ]
	then
		z=$((TT))
	elif [ $randNumber -eq 3 ]
	then
		p=$((TH))
	fi
done
flip[HH]=$x
flip[HT]=$y
flip[TT]=$z
flip[TH]=$p

echo ${flip[@]}
echo ${!flip[@]}
	
for i in ${!flip[@]}
do
	flipPercentage[$i]=$((${flip[$i]} * 100 / $n))
done

echo ${flipPercentage[@]}

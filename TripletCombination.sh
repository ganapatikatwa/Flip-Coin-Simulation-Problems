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
      x=$((++HHH))
   elif [ $randNumber -eq 1 ]
   then
      y=$((++HHT))
   elif [ $randNumber -eq 2 ]
   then
      z=$((TTH))
   elif [ $randNumber -eq 3 ]
   then
      p=$((THT))
	elif [ $randNumber -eq 4 ]
	then	
		q=$((HTH))
	elif [ $randNumber -eq 5 ]
	then
		r=$((TTT))
	elif [ $randNumber -eq 6 ]
	then
		s=$((HTT))
   fi
done

flip[HHH]=$x
flip[HHT]=$y
flip[TTH]=$z
flip[THT]=$p
flip[HTH]=$q
flip[TTT]=$r
flip[HTT]=$s

echo ${flip[@]}
echo ${!flip[@]}

for i in ${!flip[@]}
do
   flipPercentage[$i]=$((${flip[$i]} * 100 / $n))
done

echo ${flipPercentage[@]}

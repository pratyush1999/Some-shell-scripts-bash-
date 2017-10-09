#! /bin/bash
i=0
number=0
for number in $*
do

array[i]=$number
 (( i++ ))
 
done
n=$i 
for((i=0;i<n;i++))
do
	for((j=i+1;j<n;j++))
	do
		temp=${array[i]}
		if  [ ${array[i]} -gt ${array[j]} ]
		then
			 array[i]=${array[j]}
			 array[j]=$temp
		 fi
	 done	
	 done
echo ${array[*]}	 

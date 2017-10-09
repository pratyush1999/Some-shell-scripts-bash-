#! /bin/bash
array[0]=1
array[1]=4
array[2]=5
array[3]=9
array[4]=10
array[5]=40
array[6]=50
array[7]=90
array[8]=100
array[9]=400
array[10]=500
array[11]=900
array[12]=1000
array[13]=4000

array1[0]=I
array1[1]=IV
array1[2]=V
array1[3]=IX
array1[4]=X
array1[5]=XL
array1[6]=L
array1[7]=XC
array1[8]=C
array1[9]=CD
array1[10]=D
array1[11]=CM
array1[12]=M
array1[13]=IV_
num=$1
i=0
while [ $num -gt 0 ]
do
x=`expr $i + 1`

if [ $num -ge ${array[i]} -a $num -lt ${array[x]} ] 
then 
echo -en ${array1[i]}
num=`expr $num - ${array[i]}` 
i=0
else
i=`expr $i + 1`
fi
done

















































































  











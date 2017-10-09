#! /bin/bash
for ((i=1;i<=10;i++))
do
echo `expr $i \* $i`
done

for ((i=1;i<=10;i++))
do
x=1
for((j=1;j<=i;j++))
do
x=`expr $i \* $x `
done
echo "$x"
done

s1=0;
s2=1; 
for i in {1..11}
do
x=`expr $s2 % 2` 
if [ $x -ne 0 ]
then
echo "$s2"
fi
t=$s2
 s2=` expr $s1 + $s2 `
s1=$t

done

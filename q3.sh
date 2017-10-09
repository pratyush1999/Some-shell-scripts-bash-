#! /bin/bash

t=0
grep -l "$1" *.txt|xargs -n 1|while read -r "name"
do
y=`grep -c "$1" "$name"`
if [ $y -gt 0 ]
then
t=1
fi 
echo "$y lines in $name"
done

if [ $t -eq 1 ]
then
exit 0
else
exit 1
fi

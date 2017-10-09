#! /bin/bash
read -p "what is your name and bithday " name birthday
y1=`echo $birthday | cut -d "/" -f 1`
m1=`echo $birthday | cut -d "/" -f 2`
d1=`echo $birthday | cut -d "/" -f 3`


y2=`  date +'%Y/%m/%d' | cut -d "/" -f1`
m2=`date +'%Y/%m/%d' | cut -d "/" -f2`
d2=`  date +'%Y/%m/%d' | cut -d "/" -f3`

if [ m1==m2 -a d1==d2 -a $y1 -lt $y2 ]
then
	echo "Happy birthday,$name.You are `expr $y2 - $y1` years old today!" 
fi


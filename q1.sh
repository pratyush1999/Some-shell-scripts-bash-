#! /bin/bash
df | grep "/dev/sda*" |tr -s " "| while read -r name
do
name1=`echo $name|cut -d " " -f 1`
memory=`echo $name|cut -d " " -f 5 |cut -d "%" -f 1`
if [ $memory -gt $2 ]
then
echo "CRITICAL, $name1, $memory%"
fi
if [ $memory -lt $1 ]
then
echo "OK, $name1, $memory%"
fi
if [ $memory -le $2 -a $memory -ge $1 ]
then
echo "WARNING, $name1, $memory%"
fi
done


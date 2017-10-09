#! /bin/bash
i=1
ping -Dc $1 google.com | while read line 
 do
if [ $i -eq 6 ]
then
i=1
fi
 x=`tput setaf $i`
nc=`tput sgr0`
  echo -e "`date`-- $x$line$nc"
((i++))
 done 


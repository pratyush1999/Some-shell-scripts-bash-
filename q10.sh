#! /bin/bash
y=`cat /etc/passwd| wc -l`
x=`who|wc -l`
echo "$x out of $y users are online right now"


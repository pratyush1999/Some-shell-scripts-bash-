#! /bin/bash
if [ $# -eq 1 ]
then
if test -e $1
then
if test -f $1
then
chmod u+x $1
fi
else
echo "FILE DOES NOT EXIST"
fi
else
echo "USAGE:INPUT ONLY ONE FILENAME AT A TIME"
fi 

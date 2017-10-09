#! /bin/bash
i=0
for file in $*
do
array[i]=$file

  if  	test -f ${array[i]} 
then
	ls -l ${array[i]}
      
fi
((i++))
done

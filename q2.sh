j=0
for b in `find -maxdepth 1 -type d -printf '%f\n'`
do
drname[j]=$b

i=0

for a in `ls $b`
do
i=`expr $i + 1`
done

numfiles[j]=$i


j=`expr $j + 1`
done

n=${#drname[*]} 

for((i=0;i<n;i++))
do
	for((j=i+1;j<n;j++))
	do
		temp=${numfiles[i]}
               temp1=${drname[i]}
		if  [ ${numfiles[i]} -gt ${numfiles[j]} ]
		then
	       drname[i]=${drname[j]}	
             	 numfiles[i]=${numfiles[j]}
			numfiles[j]=$temp
                     drname[j]=$temp1
		 fi
	 done	
	 done


     for((i=0;i<n;i++))
    do
   echo "${drname[i]}	${numfiles[i]}"
          done



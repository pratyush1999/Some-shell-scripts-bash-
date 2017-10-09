#! /bin/bash
read -p "what is your monthly salary" salary
salary=`bc <<< "scale=4; ($salary*12)"`
comp=`echo "$salary > 300000" | bc`
 if [ $comp -eq 1 ];
 then 
tax=`bc <<< "scale=4; ($salary * 3)/10"`
 
   echo "TAX PAYMENT REQUIRED:$tax"
 
else
  
 echo "NO TAX PAYMENT REQUIRED" 

fi

#!/bin/bash

NUMBER=$1 # this means we are explicitly giving the number/value at the time of output

if [ $NUMBER -ge 100 ] # for operators in shell please check this link  https://www.tutorialspoint.com/unix/unix-basic-operators.htm
then
   echo "Given number $NUMBER is greater than 100"   
else
   echo "Given number $NUMBER is less than 100"
fi  # fi means reverse of if, indicating condition end
#!/bin/bash

ID=$(id -u)
R="\e[31m"  # red colour
G="\e[32m"  # green colour   
Y="\e[33m"  # yellow colour
N="\e[0m"   # normal colour

if [ $ID -ne 0 ] 
then
    echo -e " $R ERROR:: Please run this script with root access $N" 
    exit 1 
else
    echo -e  " You are $G root $N user"
fi 

echo "All args Passed::$@"  # $@ it will show all the args passed 

echo "Total no:of Args Passed:: $#"  # $# will show how many args passed


#!/bin/bash

ID=$(id -u)
R="\e[31m"  # red colour
G="\e[32m"  # green colour   
Y="\e[33m"  # yellow colour
N="\e[0m"   # normal colour

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script stareted executing at $TIMESTAMP" &>> $LOGFILE


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILED $N"
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ] 
then
    echo -e " $R ERROR:: Please run this script with root access $N" 
    exit 1 
else
    echo -e  " You are $G root $N user"
fi 

# echo "All args Passed::$@"  # $@ it will show all the args passed 
# echo "Total no:of Args Passed::$#"  # $# will show how many args passed
# git mysql postfix net-tools, these are packages 
# package=git for first time

for package in $@
do
    yum list installed $package &>> $LOGFILE #check installed or not
    if [ $? -ne 0 ]   #if not installed
    then
        yum install $package -y &>> $LOGFILE   # install the package
        VALIDATE $? "Installation of $package" #validate
        else
        echo -e "$package is already installed ... $Y SKIPPING $N"
    fi
done



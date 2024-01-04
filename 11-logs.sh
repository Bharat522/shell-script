#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # %F: year-month-date, %H: hour, %M: minute, %S: second 

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){  
    if [ $1 -ne 0 ]   
    then 
        echo "ERROR:: $2 Failed" 
        exit 1
    else
        echo "$2 SUCCESS" 
    fi
}

if [ $ID -ne 0 ] 
then
    echo "ERROR:: Please run this script with root access"
    exit 1 
else
    echo "You are root user"
fi 

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"
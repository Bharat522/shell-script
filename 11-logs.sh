#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # %F: year-month-date, %H: hour, %M: minute, %S: second 
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){  
    if [ $1 -ne 0 ]   
    then 
        echo -e "ERROR:: $2  $R Failed $N"       # echo is for printing purpose and for help command:   "man echo"
        exit 1
    else
        echo -e "$2  $G SUCCESS $N" 
    fi
}

if [ $ID -ne 0 ] 
then
    echo -e " $R ERROR:: Please run this script with root access $N"
    exit 1 
else
    echo "You are root user"
fi 

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"
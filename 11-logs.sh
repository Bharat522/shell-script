#!/bin/bash

ID=$(id -u)   # id -u is a command to check the user id (if it is root user then id will be '0')
TIMESTAMP=$(date +%F-%H-%M-%S) # %F: year-month-date, %H: hour, %M: minute, %S: second 
R="\e[31m"  # red colour
G="\e[32m"  # green colour   
Y="\e[33m"  # yellow colour
N="\e[0m"   # normal colour

LOGFILE="/tmp/$0-$TIMESTAMP.log" # tmp folder,$0-script name.

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

echo "user id is $ID"

VALIDATE(){  
    if [ $1 -ne 0 ]   # -ne means not equal to
    then 
        echo -e "ERROR:: $2  $R Failed $N"       # echo is for printing purpose and for help command:   "man echo"
        exit 1
    else
        echo -e "$2  $G SUCCESS $N"   # $G means we are using green colour for SUCCESS word and then we end the green colour by using $N which is normal colour
    fi
}

if [ $ID -ne 0 ] 
then
    echo -e " $R ERROR:: Please run this script with root access $N" 
    exit 1 
else
    echo -e  " You are $G root $N user"
fi 

yum install mysql -y &>> $LOGFILE # here by using &>> $LOGFILE we are keeping the log/record of this command executed

VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"
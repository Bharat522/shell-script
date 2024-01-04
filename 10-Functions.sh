#!/bin/bash

DATE=$(date)

echo "script executed date & time: $DATE"

ID=$(id -u)

VALIDATE(){   # validate is a function that we used in this script.
    if [ $1 -ne 0 ]   # $1 is arugment it will validate $? command and gives the exit status is equal to zero or not.
    then 
        echo "ERROR:: $2 Failed" # if exit status is not equal to 0 then error will display as failed.
        exit 1 # other tha 0 if we get any other value in exit status that means this command is error.
    else
        echo "$2 SUCCESS" # if exit status is equal to 0 then success is displayed.
    fi
}

if [ $ID -ne 0 ] # here if ID is 0 then it is root user, if ID is not 0 then it is normal user
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE $? "Installing Mysql"

yum install git -y

VALIDATE $? "Installing GIT"
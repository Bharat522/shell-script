#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with root user access"
    #exit 1 # this is exit status if you dont run thhis script as root user script will stop here at this point as id will not be 0
    # exit status value must be otherthan zero as the ID for ROOT user is 0
else
    echo "you are root user"
fi 
    # else is not required in this statement as we are checking the user is root or not
    # if user is root we will proceed and run the next step 
    # if not root user then error msg will get displayed
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi
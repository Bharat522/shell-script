#!/bin/bash

username=$1
password=$2

echo "Please enter your username:"  # what ever we write in echo it will be printed in o/p screen

read -s USERNAME # read command is used to just read the value entered for USERNAME and (-s) is used to hide the value entered in o/p screen

echo "Username: $USERNAME" # this is used to show our username/password in the o/p screen, usually uasername/password are confidential so they will not be disclosed on any screen, this is only used to practice purpose only

username=$USERNAME # this means small letter username is variables and $USERNAME is value what we pass at the time of output

echo "Please enter your password:"

read -s PASSWORD

echo "Password: $PASSWORD"

password=$PASSWORD


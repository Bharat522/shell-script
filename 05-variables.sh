#!/bin/bash

echo "Please enter your username:"  # what ever we write in echo it will be printed in o/p screen

read -s USERNAME # read command is used to just read the value entered for USERNAME and (-s) is used to hide the value entered in o/p screen

username=$USERNAME # this means small letter username is variables and $USERNAME is value what we pass at the time of output

echo "Username: $USERNAME"

echo "Please enter your password:"

read -s PASSWORD

password=$PASSWORD

echo "Password: $PASSWORD"
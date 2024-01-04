#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "How many args passed:: $#"  # symbol '$#' denotes how many args passed 

echo "all args passed:: $@"       # symbol '$@' displays all the args 

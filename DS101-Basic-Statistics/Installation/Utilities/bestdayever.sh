#!/bin/bash

#create a name variable
#name="Joe"

# read in a variable name
#echo "What is your name?"
#read name

# read in after calling bestdayever.sh name called a positional argument
#name=$1

# now let's build in some smarts
name=read$(whoami)
location=read$(pwd)
date=read$(date)

echo "You are currently logged in as $name"
echo "You are presently located at $location"
echo "today's date is $date"


echo "Good morning $name!"

sleep 1

echo "You are looking marvelous $name!"

sleep 1

echo "What are you accomplishing today $name?"




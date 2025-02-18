#!/bin/bash
#Program that counts down to zero from a given argument
echo -e "\n~~ Countdown Timer ~~\n"
if [[ -z $1 ]]
  then
    # If no argument, ask the user for a number
    echo "No argument provided. Please enter a positive integer to start the countdown:"
    read I
else
  #If argument has been provided, assign it to I
  I=$1
fi

if [[ $I -gt 0 ]]
then
: 'for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done'

while [[ $I -ge 0 ]]
  do
    echo $I
    (( I-- ))
    sleep 1
  done
else echo "Please provide a positive integer."
fi

# Keep the terminal open
echo "Press any key to exit..."
read -n 1
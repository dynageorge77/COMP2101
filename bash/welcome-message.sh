#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

##############################################
#                  Variables                 #
##############################################
title="Overlord"

echo "Enter your name:"
read USER

hostname=$(hostname)

#############################################
#              date and time                #
#############################################
# %A is for displaying the day
# %I is for displaying Hour
# %M is for displaying minute
# %S is for displaying second
# %p is for displying AM/ PM

day=$(date +"%A")
date=$(date +"%I:%M:%S %p")

#############################################
#            Conditional statement          #
#############################################

if [ $day == "Monday" ]
then
  echo "Monday might be Busy"

elif [ $day == "Tuesday"  ]
then
  echo "Tuesday might be Ok"

elif [ $day == "Wednesday" ]
then
  echo "Wednesday might be Good"

elif [ $day == "Thursday" ]
then
  echo "Thursday might be Lucky"

elif [ $day == "Friday" ]
then
  echo "Friday is Weekend"

elif [ $day == "Saturday" ]
then
  echo "Saturday is Sleepy"

else
  echo "Sunday is Free"

fi

###############################################
#                   Main                      #
###############################################
cat <<EOF

Welcome to planet $hostname, "$title $USER!"
It is $day at $date.

EOF

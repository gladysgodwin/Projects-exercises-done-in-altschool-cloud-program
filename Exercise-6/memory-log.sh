#!/usr/bin/bash
#I am printing out my Ram usage for each day
#saving to a file
#Sending to my mail

EMAIL=gladysgodwin79@gmail.com
RAM_USAGE=$(free)
time=$(date +%H%M)

alert="My RAM report, Ram Usage as at $time is: \n$RAM_USAGE"
echo "${alert}" >> memoryl.log | mutt -a memoryl.log -s "Ram Report" -- $EMAIL

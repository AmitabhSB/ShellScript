#!/bin/bash

#Question 2

#Write a shell script that will take a backup of all files in a directory and its subdirectories,that has been modified within the last 24 hours.The script will create a backup directory in the parent directory with name backup_today's date, where it will copy all the files.
#(The value 24 is for an example, you can use a command line parameter for this).

todayDate=$(date +%Y-%m-%d)
echo "Creating directory" 
mkdir -p /backup_$todayDate
find . -mtime -1 -exec cp -a -p -t /backup_$todayDate "{}" \+

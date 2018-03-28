#!/bin/bash
clear
# Q1 Write a shell script that, that will traverse a directory recursively and will print the "absolute path names of all the regular files and their sizes present in the directory and all other subdirectories inside it". 
#If the script is run without any command line argument, then it will start traversing from the current working directory. If a commnad line argument is given (of the form say  /home/msc/dir1) it will start from that directory.

ls -R $1 | awk '
/:$/&&f{s=$0;f=0}
/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
NF&&f{ print s"/"$0 }' > list.txt
cat list.txt

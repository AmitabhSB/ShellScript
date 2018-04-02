#!/bin/bash

if [ ! -d "./Zero" ]
then 
mkdir "Zero"
fi 
#ls -l | awk '{ if ($5==0)  { print $9 } }

find . -maxdepth 1 -type f -size -1c -exec mv {} ./Zero/ \;

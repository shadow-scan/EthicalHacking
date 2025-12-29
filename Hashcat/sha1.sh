#!/usr/bin/env bash 

while read line; do 
     echo -n "$line" | sha1sum | awk '{print $1}'
done < /home/robot/wordlist.txt > /home/robot/sha1_hashes.txt

cat /home/robot/sha1_hashes.txt

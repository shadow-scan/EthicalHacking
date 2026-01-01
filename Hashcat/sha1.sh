#!/usr/bin/env bash 

mkdir -p /home/robot/sha1/

head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/sha1/wordlist.txt

while read line; do 
     echo -n "$line" | sha1sum | awk '{print $1}'
done < /home/robot/sha1/wordlist.txt > /home/robot/sha1/sha1_hashes.txt

cat /home/robot/sha1/sha1_hashes.txt

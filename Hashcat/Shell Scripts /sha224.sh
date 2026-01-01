#!/usr/bin/env bash 

mkdir -p /home/robot/sha224 

head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/sha224/wordlist.txt 

while read line; do 
     echo -n "$line" | sha224sum | awk '{print $1}' 
done < /home/robot/sha224/wordlist.txt > /home/robot/sha224/sha224_hashes.txt 

cat /home/robot/sha224/sha224_hashes.txt 

#!/usr/bin/env bash 

mkdir -p /home/robot/sha512 

head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/sha512/wordlist.txt 

while read line; do 
     echo -n "$line" | sha512sum | awk '{print $1}' 
done < /home/robot/sha512/wordlist.txt > /home/robot/sha512/sha512_hashes.txt 

cat /home/robot/sha512/sha512_hashes.txt

#!/usr/bin/env bash 

mkdir -p /home/robot/sha256

head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/sha256/wordlist.txt 

while read line; do
     echo -n "$line" | sha256sum | awk '{print $1}' 
done < /home/robot/sha256/wordlist.txt > /home/robot/sha256/sha256_hashes.txt 

cat /home/robot/sha256/sha256_hashes.txt 

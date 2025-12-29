#!/usr/bin/env bash 

sudo apt install wordlists

sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/wordlist.txt 

while read line; do 
     echo -n "$line" | sha1sum | awk '{print $1}'
done < /home/robot/wordlist.txt > /home/robot/sha1_hashes.txt

cat /home/robot/sha1_hashes.txt

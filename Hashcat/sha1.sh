#!/usr/bin/env bash 

while read line; do 
     echo -n "$line" | sha1sum | awk '{print $1}'
done < /tmp/wordlist.txt > /tmp/sha1_hashes.txt

cat /tmp/sha1_hashes.txt

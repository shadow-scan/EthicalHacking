#!/usr/bin/env bash 

while read line; do 
     echo -n "$line" | sha1sum | awk '{print $1}' 
done < wordlist.txt > sha1_hashes.txt

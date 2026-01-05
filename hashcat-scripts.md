# 🔐 Hash Generation Scripts 

This directory contains Bash scripts used to generate cryptographic hashes from a controlled wordlist for use in Hashcat dictionary attacks.

All hashes are generated locally in a lab environment using known inputs to ensure testing is authorized, reproducible, and ethical.

# 📜 Script Purpose

These scripts are used to:

Create a dedicated workspace for hash generation

Extract a small, controlled subset of a wordlist

Generate hashes using SHA‑based algorithms

Produce hash files suitable for Hashcat dictionary attacks

This simulates real‑world password storage scenarios while keeping testing safe and controlled.

# 🧪 Example: SHA‑1 Hash Generation Script
#!/usr/bin/env bash

# Create working directory
mkdir -p /home/robot/sha1/

# Create a small test wordlist from rockyou.txt
head -n 20 /usr/share/wordlists/rockyou.txt > /home/robot/sha1/wordlist.txt

# Generate SHA-1 hashes from each word
while read line; do
    echo -n "$line" | sha1sum | awk '{print $1}'
done < /home/robot/sha1/wordlist.txt > /home/robot/sha1/sha1_hashes.txt

# Display generated hashes
cat /home/robot/sha1/sha1_hashes.txt

# 🔍 What the Script Does

Creates a dedicated directory
Keeps all files isolated within /home/robot/sha1/.

Builds a controlled wordlist
Extracts the first 20 entries from rockyou.txt for fast, repeatable testing.

Generates cryptographic hashes

Reads each word line‑by‑line

Uses the appropriate SHA algorithm

Outputs only the raw hash values

Outputs results for verification
Confirms successful hash generation before cracking.

# 📁 Supported Hash Algorithms

Equivalent scripts exist for the following algorithms:

SHA‑1

SHA‑224

SHA‑256

SHA‑512

Each algorithm is organized in its own subdirectory with:

A hash generation script

A controlled wordlist

An output file containing generated hashes

# 🎯 Use Case

The generated hash files are used as input for Hashcat straight / dictionary attacks, allowing controlled experimentation with different hash modes and wordlists.

# ⚠️ Ethical Notice

All hashes are generated from data I own or have explicit permission to use.
These scripts are intended for educational and defensive security purposes only.

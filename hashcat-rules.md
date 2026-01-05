# 🔐 Hashcat Rule‑Based Dictionary Attacks

This document demonstrates Hashcat rule‑based dictionary attacks performed against locally generated hashes in a controlled lab environment.

Rule‑based attacks extend standard dictionary attacks by applying transformation rules to each word in the wordlist, significantly increasing coverage without requiring larger wordlists.

⚠️ All testing was performed on data I own or have explicit permission to use.
Unauthorized password cracking is illegal and unethical.

# 🧰 Attack Mode Used

Straight / Dictionary attack (-a 0)

Rule engine (-r) using predefined Hashcat rules

# 📁 Hash Source

Hashes are generated locally in a lab environment

Stored in: /home/robot/hash.txt

Used solely for authorized testing and experimentation

# 🧪 Example Rule‑Based Attack
hashcat -a 0 -m 0 /home/robot/hash.txt /usr/share/wordlists/rockyou.txt -r /usr/share/hashcat/rules/best64.rule

# 🔍 Command Breakdown

-a 0 → Straight (dictionary) attack mode

-m 0 → MD5 hash type

/home/robot/hash.txt → File containing target hashes

rockyou.txt → Base wordlist

-r best64.rule → Applies 64 common password mutation rules

The best64.rule file modifies each word by applying common transformations such as:

Capitalization changes

Appending numbers or symbols

Simple character substitutions

This allows Hashcat to test many realistic password variations efficiently.

# 🎯 Purpose of Rule‑Based Attacks

Rule‑based attacks simulate real‑world user password behavior, where users often:

Capitalize words

Add numbers or symbols

Use predictable patterns

This technique improves success rates without dramatically increasing runtime.

# ⚠️ Ethical Notice

All hashes used in this document are locally generated or explicitly authorized.
This content is intended for educational and defensive security purposes only.

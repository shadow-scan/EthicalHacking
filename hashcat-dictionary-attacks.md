# 🔐 Hashcat Dictionary Attacks

This document focuses on Hashcat straight / dictionary attacks performed against locally generated hashes in a controlled lab environment.

The purpose of this section is to document foundational password auditing techniques using wordlists before progressing to more advanced Hashcat attack modes in separate documentation.

⚠️ All testing was performed on data I own or have explicit permission to use.
Unauthorized password cracking is illegal and unethical.

# 📁 Hash Types Covered

MD5

SHA‑1

SHA‑224

SHA‑256

SHA‑512

(Additional hash types may be added as part of dictionary‑based testing.)

# 🧰 Attack Mode Used

Straight / Dictionary attacks (-a 0)

Rule‑based, mask, and hybrid attacks are documented separately as they are explored.

# 🧪 Example Dictionary Attacks
# MD5
hashcat -a 0 -m 0 hashes.txt /usr/share/wordlists/rockyou.txt

# SHA‑1
hashcat -a 0 -m 100 hashes.txt /usr/share/wordlists/rockyou.txt

# SHA‑224
hashcat -a 0 -m 1300 hashes.txt /usr/share/wordlists/rockyou.txt

# SHA‑256
hashcat -a 0 -m 1400 hashes.txt /usr/share/wordlists/rockyou.txt

# SHA‑512
hashcat -a 0 -m 1700 hashes.txt /usr/share/wordlists/rockyou.txt

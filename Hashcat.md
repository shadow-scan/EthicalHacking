# 🔐 Hashcat Attack Collection

This section documents a wide range of Hashcat password recovery techniques tested against locally generated hashes in a controlled lab environment.

The repository includes foundational dictionary attacks as well as more advanced attack methods as they are explored and added over time.

All testing was performed on data I own or have explicit permission to use.
Unauthorized password cracking is illegal.

# 📁 Hash Types Covered

MD5

SHA1

SHA224

SHA256

SHA512
(Additional hash types and modes may be added)

# 🧰 Attack Modes Used

Straight / Dictionary attacks (-a 0)

Rule-based attacks (planned / expanding)

Mask attacks (planned / expanding)

Hybrid attacks (planned / expanding)

🧪 Example Dictionary Attacks
# MD5
hashcat -a 0 -m 0 hashes.txt rockyou.txt

# SHA1
hashcat -a 0 -m 100 hashes.txt rockyou.txt

# SHA224
hashcat -a 0 -m 1300 hashes.txt rockyou.txt

# SHA256
hashcat -a 0 -m 1400 hashes.txt rockyou.txt

# SHA512
hashcat -a 0 -m 1700 hashes.txt rockyou.txt

This command demonstrates a basic dictionary attack using Hashcat against locally generated MD5 hashes.
hashcat -a 0 -m 0 /home/robot/hashes.txt /usr/share/wordlists/rockyou.txt 

This command demonstrates a basic dictionary attack using Hashcat against locally generated SHA1 hashes.
hashcat -a 0 -m 100 /home/robot/hashes.txt /usr/share/wordlists/rockyou.txt 

This command demonstrates a basic dictionary attack using Hashcat against locally generated SHA224 hashes.
hashcat -a 0 -m 1300 /home/robot/hashes.txt /usr/share/wordlists/rockyou.txt 

This command demonstrates a basic dictionary attack using Hashcat against locally generated SHA256 hashes.
hashcat -a 0 -m 1400 /home/robot/hashes.txt /usr/share/wordlists/rockyou.txt

This command demonstrates a basic dictionary attack using Hashcat against locally generated SHA512 hashes.
hashcat -a 0 -m 1700 /home/robot/hashes.txt /usr/share/wordlists/rockyou.txt 

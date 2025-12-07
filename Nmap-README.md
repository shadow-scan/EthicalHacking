# 🔍 Nmap Scan Collection

This repository contains a collection of **Nmap scan outputs** used for educational cybersecurity practice, network enumeration, and ethical hacking labs.

All scans were performed on systems I own or have explicit permission to test.  
**Do not use these commands on unauthorized targets — scanning without permission is illegal.**

---

## 📁 Contents
- `one.xml` → Top 20 ports scan with version detection  
- `three.xml` → FTP anonymous login check (port 21)  
- `four.xml` → SMB user enumeration (port 445)  
- `five.xml` → SSH host key enumeration (port 22)  
- `six.xml` → SYN scan with packet trace  
- `seven.xml` → UDP top 25 ports scan with packet trace  
- `eight.xml` → Host discovery (ping sweep)  
- `nine.xml` → LDAP RootDSE enumeration (port 389)  
- `ten.xml` → RDP encryption check (port 3389)  
- `eleven.xml` → VNC info enumeration (port 5900)  
- `twelve.xml` → HTTP/HTTPS methods check (ports 80, 443)  
- `thirteen.xml` → HTTP service enumeration (port 80)  
- `fourteen.xml` → Malware script + Top 25 ports scan
- `fifteen.xml` → External Script + Top 25 Ports Scan

---

## 🧰 Nmap Commands Used

```bash
# 1️⃣ Top 20 Ports Scan (Version Detection)
nmap --privileged -sV --initial-rtt-timeout 200ms --max-rtt-timeout 3000ms \
--max-retries 2 --max-parallelism 10 --host-timeout 20s --top-ports 20 --open \
-oX one.xml 10.50.90.0-255

# 2️⃣ FTP Anonymous Login Check
nmap --privileged -sV -p 21 -T3 --script ftp-anon --open -oX three.xml 10.50.90.0-255

# 3️⃣ SMB User Enumeration
nmap --privileged -sV -p 445 -T3 --script smb-enum-users --open -oX four.xml 10.50.90.0-255

# 4️⃣ SSH Host Key Enumeration
nmap --privileged -sV -T3 -p 22 --open -oX five.xml --script ssh-hostkey --script-args ssh_hostkey=all 10.50.90.0-255

# 5️⃣ SYN Scan + Packet Trace
nmap --privileged -sS -sV -T3 --open --packet-trace -oX six.xml 10.50.90.0-5

# 6️⃣ UDP Top Ports Scan
nmap --privileged -sU -sV -T3 --top-ports 25 --open --packet-trace -oX seven.xml 10.50.90.0-5

# 7️⃣ Host Discovery (Ping Sweep)
nmap --privileged -sn -oX eight.xml 10.50.90.0-255

# 8️⃣ LDAP RootDSE Enumeration
nmap --privileged -Pn -sV -T3 -p 389 --open -oX nine.xml --script ldap-rootdse 10.50.90.0-255

# 9️⃣ RDP Encryption Check
nmap --privileged -Pn -sV -T4 -p 3389 --open -oX ten.xml --script rdp-enum-encryption 10.50.90.0-255

# 🔟 VNC Info Enumeration
nmap --privileged -sV -T4 -p 5900 -Pn --open -oX eleven.xml --script vnc-info 10.50.90.0-255

# 1️⃣1️⃣ HTTP/HTTPS Methods Check
nmap --privileged -Pn -sV -T4 -p 80,443 --open -oX twelve.xml --script http-methods --script-args http-pipeline=8 10.50.90.0/24

# 1️⃣2️⃣ HTTP Enumeration
nmap --privileged -sV -T3 -p 80 --open -oX thirteen.xml --script http-enum 10.50.90.0/24

# 1️⃣3️⃣ Malware Script + Top 25 Ports Scan
nmap --privileged -sV -T3 --open --top-ports 25 -oX fourteen.xml \
--script malware --exclude 10.50.90.1,10.50.90.4,10.50.90.15 10.50.90.0/24

# 1️⃣4️⃣ External Script + Top 25 Ports Scan
/usr/lib/nmap/nmap --privileged -sV -T4 --open --top-ports 25 -Pn \
-oX fifteen.xml --script external 10.50.90.0/24

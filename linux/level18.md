Level 17 – Retrieving SSH Private Key via SSL Service
Objective

Find the correct service listening on localhost that accepts the Bandit16 password over SSL/TLS and returns the SSH private key for the next level.

Step 1: Scan for Open Ports

The challenge states the service is running on a port between 31000–32000.

nmap -p 31000-32000 127.0.0.1


Open ports found:

31046

31518

31691

31790

31960

Step 2: Identify Which Port Uses SSL/TLS

Test each open port using openssl s_client.

Example:

openssl s_client -connect localhost:31790


Port 31790 successfully completed a TLS handshake, confirming it speaks SSL/TLS.

Step 3: Submit Bandit16 Password (Correct Method)

When connecting normally, OpenSSL keeps renegotiating (KEYUPDATE).
To send input cleanly, use -quiet so OpenSSL behaves like a simple pipe.

openssl s_client -connect localhost:31790 -quiet


Now paste the Bandit16 password and press Enter.

Step 4: Receive Private SSH Key

The server returns an RSA private key, which is the credential for the next level.

-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
...
MmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----

Step 5: Save the Key Locally
nano bandit17.key
# paste key


Set correct permissions:

chmod 600 bandit17.key

Step 6: Log Into Next Level
ssh -i bandit17.key bandit17@bandit.labs.overthewire.org -p 2220

Key Concepts Learned

Using nmap to discover services

Differentiating SSL vs non-SSL services

Why openssl s_client -quiet is required

Handling SSH private key permissions

TLS renegotiation (KEYUPDATE) behavior

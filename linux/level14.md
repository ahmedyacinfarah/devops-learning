Level 13 → 14 (Bandit)

Goal: Use the private SSH key provided to log in as bandit14 and get the password for the next level.

Given: sshkey.private (PEM RSA private key)
Password file location: /etc/bandit_pass/bandit14 (only readable by bandit14)

Steps to Solve
1️⃣ Inspect the key

Check that the private key exists and its type:

ls -l
file sshkey.private


Expected output:

sshkey.private: PEM RSA private key


The key is in PEM format and will be used for SSH authentication.

2️⃣ Copy the key to your local machine (outside Bandit)

Important: Do not try to SSH from inside the Bandit server (localhost) — the server blocks it.

scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private private.key


-P 2220 → Bandit uses a non-standard SSH port

bandit13@bandit.labs.overthewire.org → source user and host

private.key → local filename

3️⃣ Secure the key

SSH requires that private keys cannot be readable by others:

chmod 600 private.key


600 = read/write for owner only

Prevents SSH from ignoring the key due to loose permissions

Do not attempt chmod on the server if restricted — only needed on your local machine.

4️⃣ SSH into Bandit Level 14 using the key
ssh -i private.key bandit14@bandit.labs.overthewire.org -p 2220


-i private.key → specifies the private key

bandit14 → username for next level

-p 2220 → SSH port used by Bandit

Optional (avoids host key warnings):

ssh -i private.key -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null bandit14@bandit.labs.overthewire.org -p 2220

5️⃣ Read the password for Level 14
cat /etc/bandit_pass/bandit14


This outputs the password needed to log in as bandit14 for the next level.

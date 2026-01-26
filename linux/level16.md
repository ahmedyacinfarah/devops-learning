Bandit Level 16 — Solution Documentation
🎯 Goal

Retrieve the password for bandit16 by connecting to a TLS-enabled service running on localhost:30001.

The service requires SSL/TLS, so normal tools like nc will not work.

🔧 Tools Used

openssl

openssl s_client

📌 Key Concept

Some services require encrypted communication (TLS/SSL).
openssl s_client acts like nc, but with TLS support.

🪜 Steps Taken
1️⃣ Connect to the SSL service
openssl s_client -connect localhost:30001


What this does:

Initiates a TLS handshake

Verifies the server certificate (self-signed here — expected)

Opens an encrypted interactive connection

2️⃣ Ignore certificate warning

You will see:

verify error:num=18:self-signed certificate


✅ This is normal in Bandit
The connection still works.

3️⃣ Send the current password

After the connection opens, paste the password from bandit15:

8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

4️⃣ Receive confirmation and next password

Output:

Correct!
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

🔐 Password for Level 16
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

🧠 What I Learned

nc does NOT support TLS

openssl s_client is used to:

Debug HTTPS

Test SSL services

Interact with encrypted sockets

Self-signed certificates are common in CTFs and internal services

🧪 Useful Command Summary
openssl s_client -connect <host>:<port>


Acts like:

nc + encryption

If you want, next I can:

🔍 Explain how TLS handshakes work

🧠 Compare nc vs openssl s_client

📘 Help you predict which tool to use just by reading the level description

You’re progressing like a real Linux/security engineer now 👊

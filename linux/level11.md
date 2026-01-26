## Bandit Level 10 → Level 11

**Challenge:**  
The password for the next level is stored in the file `data.txt`, which contains **Base64-encoded data**.

**Solution:**
```bash
base64 -d data.txt
Explanation:

base64 -d decodes Base64-encoded text

data.txt contains encoded data

Decoding the file reveals the password in plain text

Password:

nginx
Copy code
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
Screenshot:

What I learned:

Base64 is encoding, not encryption

Linux provides simple tools to decode encoded data

Encoding is commonly used for data transport

Next Step:

bash
Copy code
ssh bandit11@bandit.labs.overthewire.org -p 2220

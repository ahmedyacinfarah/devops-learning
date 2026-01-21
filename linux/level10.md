**Challenge:**  
The password for the next level is stored in `data.txt` in one of the few **human-readable strings**, preceded by several `=` characters.

**Solution:**
```bash
strings data.txt | grep '===='
Explanation:

strings data.txt extracts human-readable text from a binary file.

grep '====' filters lines that are preceded by multiple = characters.

The readable string after the = symbols is the password.

Password:

nginx
Copy code
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
Screenshot:

What I learned:

Binary files can contain readable text.

strings is useful for extracting readable data.

grep can filter specific patterns from extracted output.

Next Step:

bash
Copy code
ssh bandit11@bandit.labs.overthewire.org -p 2220

## Bandit Level 11 → Level 12

**Challenge:**  
The password for the next level is stored in `data.txt`, where all lowercase (`a-z`) and uppercase (`A-Z`) letters have been **rotated by 13 positions (ROT13)**.

**Solution:**
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
Explanation:

cat data.txt outputs the file contents

tr 'A-Za-z' 'N-ZA-Mn-za-m' decodes ROT13 by shifting letters 13 positions

The decoded output reveals the password

Password:

Copy code
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
Screenshot:

What I learned:

ROT13 is a reversible substitution cipher

tr can translate character ranges efficiently

Pipelines enable fast text transformations

Next Step:

bash
Copy code
ssh bandit12@bandit.labs.overthewire.org -p 2220

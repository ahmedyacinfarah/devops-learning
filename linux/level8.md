## Bandit Level 7 → Level 8

**Challenge:**  
The password for the next level is stored in the file `data.txt` next to the word **millionth**.

**Solution:**
```bash
grep millionth data.txt
Explanation:

grep millionth data.txt searches for the line containing the word millionth.

The string next to millionth is the password.

Password:

nginx
Copy code
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
Screenshot:

What I learned:

Using grep to quickly locate passwords in large files.

How to find patterns next to keywords without manually opening files.

Next Step:

bash
Copy code
ssh bandit8@bandit.labs.overthewire.org -p 2220

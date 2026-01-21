## Bandit Level 4 → Level 5

**Challenge:**  
The password for the next level is stored in the only human-readable file in the `inhere` directory.

**Solution:**
```bash
cd inhere
file ./*
cat ./-file07
Explanation:

file ./* identifies the type of each file.

Only one file is human-readable (ASCII text).

cat prints the contents of that file to reveal the password.

Password:

Copy code
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
Screenshot:

What I learned:

How to detect readable files using the file command.

Not all files should be opened blindly with cat.

Next Step:

bash
Copy code
ssh bandit5@bandit.labs.overthewire.org -p 2220
yaml
Copy code

---

### ✅ Use it
```bash
vim level5.md

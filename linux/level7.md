## Bandit Level 6 → Level 7

**Challenge:**  
The password for the next level is stored somewhere on the system and has the following properties:
- Owned by user `bandit7`
- Owned by group `bandit6`
- Exactly 33 bytes in size

**Solution:**
```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
cat /path/to/found/file
Explanation:

find / searches the entire filesystem.

-user bandit7 filters files owned by user bandit7.

-group bandit6 filters files owned by group bandit6.

-size 33c matches files that are exactly 33 bytes.

2>/dev/null suppresses permission denied errors.

cat prints the contents of the matching file.

Password:

nginx
Copy code
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
Screenshot:

What I learned:

How to search the entire filesystem using find.

Filtering files by owner, group, and size.

Redirecting error output to keep command results clean.

Next Step:

bash
Copy code
ssh bandit7@bandit.labs.overthewire.org -p 2220
yaml
Copy code

---

### ✅ Use it
```bash
vim level7.md

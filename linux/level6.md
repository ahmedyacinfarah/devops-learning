## Bandit Level 5 → Level 6

**Challenge:**  
The password for the next level is stored in a file somewhere under the `inhere` directory with the following properties:
- Human-readable  
- Exactly 1033 bytes in size  
- Not executable  

**Solution:**
```bash
find . -type f -size 1033c ! -executable
cat ./maybehere07/.file2
Explanation:

find searches for files matching specific conditions.

-size 1033c filters files that are exactly 1033 bytes.

! -executable excludes executable files.

cat prints the contents of the matching file.

Password:

nginx
Copy code
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
Screenshot:

What I learned:

How to combine multiple conditions with find.

Using file size and permissions to narrow down search results.

Next Step:

bash
Copy code
ssh bandit6@bandit.labs.overthewire.org -p 2220
yaml
Copy code

---

### ✅ Use it
```bash
vim level6.md

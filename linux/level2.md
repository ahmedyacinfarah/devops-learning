## Bandit Level 1 → Level 2

**Challenge:**  
Find the password stored in a file called `-` in the home directory.

---

**Solution:**
```bash
cat ./-
Alternative ways to reference a file named - (because - usually means “stdin” in Linux)

bash
Copy code
cat ./-
# or
cat ./\-
Explanation:

cat ./- prints the contents of the file named -.

./- specifies the file in the current directory; without ./, cat - is interpreted as standard input.

This shows the password for Level 2.

Password:

Copy code
263JGJPfgU6LtdEvgfWU1XP5yac29fFx
Screenshot:
![Level 1 Screenshot](screenshots/level1.png)
(Take a screenshot of the terminal showing the password)

What I learned:

How Linux interprets - as a special character in commands.

Using ./ to reference files in the current directory.

Reading hidden or oddly-named files in Linux.

Next Step:
SSH into Bandit Level 2 using the password you just got:

bash
Copy code
ssh bandit2@bandit.labs.overthewire.org -p 2220
yaml
Copy code

---

### ✅ How to use in vim

1. Open the file:

```bash
vim level2.md

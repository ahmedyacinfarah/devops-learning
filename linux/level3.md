## Bandit Level 2 → Level 3

**Challenge:**  
The password for Level 3 is stored in a file called `spaces in this filename` in the home directory.

---

**Solution:**
```bash
cat "spaces in this filename"
Alternative way:

bash

cat spaces\ in\ this\ filename
Explanation:

File names with spaces must be handled carefully in Linux.

Wrapping the file name in quotes tells the shell to treat it as one argument.

Escaping spaces with \ also works.

The cat command outputs the password for the next level.

Password:
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
Screenshot:

What I learned:

How to work with file names that contain spaces.

Using quotes and escape characters in the shell.

Linux command-line tools are flexible but require precise syntax.

Next Step:
SSH into Bandit Level 3:

bash

ssh bandit3@bandit.labs.overthewire.org -p 2220


---

### ✅ Paste it using vim

```bash
vim level3.md

# Bandit Level 17

## Goal
Find the password for **Bandit 18**.

The password is stored in a file that is **different** between two files:
- `passwords.old`
- `passwords.new`

Both files are located in the home directory.

---

## Key Idea

The `diff` command compares two files line by line and shows what changed.

Since the password is the **only difference** between the two files, `diff` will reveal it.

---

## Solution

### Step 1: List files
```bash
ls
Output:

passwords.old
passwords.new
Step 2: Compare the files
diff passwords.old passwords.new
Example Output
< oldpassword123
---
> newpassword456
Lines starting with:

< exist only in passwords.old

> exist only in passwords.new

👉 The password for the next level is the line marked with >.

## Bandit Level 3 → Level 4

**Challenge:**  
The password for Level 4 is stored in a hidden file inside the `inhere` directory.

**Solution:**
```bash
cd inhere
ls -a
cat .hidden
Explanation:

ls -a lists all files, including hidden ones (starting with .).

cat .hidden prints the password for the next level.

Password:

Copy code

2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
Screenshot:

What I learned:

How to find hidden files in Linux.

Basic directory navigation and file reading commands.

Next Step:

bash
Copy code
ssh bandit4@bandit.labs.overthewire.org -p 2220

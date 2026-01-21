## Bandit Level → Next Level

**Challenge:**  
The password for the next level is stored in `data.txt` and is the **only line that occurs exactly once**.

**Solution:**
```bash
sort data.txt | uniq -c | grep -E '^\s*1 ' | tr -s ' ' | cut -d' ' -f2-
Explanation:

sort data.txt → sorts all lines so duplicates are consecutive

uniq -c → counts occurrences of each line

grep -E '^\s*1 ' → selects lines that occur exactly once

tr -s ' ' → squeezes multiple spaces into one

cut -d' ' -f2- → extracts the actual line (password) after the count

Password:

Copy code
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
Screenshot:

What I learned:

How to combine sort, uniq, and grep to filter lines by frequency

Using tr and cut to clean up output and extract the password

Efficient text processing in Linux without opening large files manually

Next Step:

bash
Copy code
ssh bandit10@bandit.labs.overthewire.org -p 2220

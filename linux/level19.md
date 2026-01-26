Bandit Level 18
Goal

Retrieve the password for the next level by identifying the difference between two files.

Given Files

In the home directory:

passwords.old

passwords.new

Both files contain similar content, except for one changed line.

Approach

The diff command is used to compare two files line by line and show their differences.

Command used:

diff passwords.old passwords.new

Output
42c42
< pGozC8kOHLkBMOaL0ICPvLV1IjQ5F1VA
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO


Explanation:

Line 42 is different between the two files

< shows the line from passwords.old

> shows the line from passwords.new

The password is the new value, not the old one.

✅ Password for Bandit 18
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO

Key Takeaways

diff is useful for spotting exact changes between files

Always read the symbols:

< = first file

> = second file

The Bandit levels often hide the password as the changed value

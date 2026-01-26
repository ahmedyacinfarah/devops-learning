Bandit Level 12 → 13 Solution

Password: FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

What was the challenge?

The file data.txt wasn’t just one compression format — it was hex-encoded, then compressed and archived multiple times using different formats (gzip, bzip2, tar).
The goal was to decode and unwrap each layer step by step until readable text appeared.

Step-by-step Explanation

Work safely in /tmp

mkdir /tmp/lebron
cp data.txt /tmp/lebron
cd /tmp/lebron


Bandit levels often require write permissions — /tmp is perfect for that.

Reverse the hex dump

xxd -r data.txt > data


xxd -r converts the hex back into raw binary data.

Identify the file type

file data


Output showed it was gzip compressed, so it needed decompression.

Decompress gzip

mv data file.gz
gzip -d file.gz


After decompression, file revealed bzip2 compression.

Decompress bzip2

mv file file.bz2
bzip2 -d file.bz2


Now the file turned out to be a tar archive.

Extract tar archive

mv file file.tar
tar xf file.tar


This produced another compressed file.

Repeat the process
Using the same loop:

file to identify the format

Rename correctly (.gz, .bz2, .tar)

Decompress or extract

This cycle happened several times:

gzip → tar → bzip2 → tar → gzip → text

Final result

cat data


Output:

The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

Key Takeaways

Always use file before guessing how to open something

Compression layers can be stacked — don’t assume it’s only one

Renaming files to the correct extension helps tools work properly

/tmp is essential for Bandit levels that need write access

Bandit Level 19
Goal

Retrieve the password for the next level despite the server immediately logging you out on normal login.

Problem

When logging in normally to bandit18, the server immediately terminates the session, preventing interaction.

Key Insight

From man ssh:

If a command is specified, it will be executed on the remote host instead of a login shell.

Also:

-t forces allocation of a pseudo-terminal (TTY)

Running a shell manually (/bin/sh) bypasses the forced logout behavior

Solution

Instead of starting a normal login shell, explicitly request a shell command.

Command used:

ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh


Explanation:

-t → forces a terminal

/bin/sh → starts a shell directly instead of the default login shell

Steps After Login

List files:

ls


Output:

readme


Read the file:

cat readme

✅ Password for Bandit 19
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8

Key Takeaways

SSH can execute a single command instead of a login shell

-t is critical when the remote system expects a TTY

Forced logout scripts can often be bypassed by spawning your own shell

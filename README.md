# Linux Fundamentals & OverTheWire Bandit

## Introduction
Linux is an open-source operating system that manages computer hardware, runs applications, and enables networking.  
It is the backbone of **servers, cloud platforms, DevOps workflows, and containers**.

For DevOps, Linux is not optional — it is a **core skill**:

- Most cloud servers (AWS, Azure, GCP) run Linux
- Tools like Docker, Kubernetes, Ansible, and Terraform rely heavily on Linux
- Networking, security, and automation are primarily done in Linux environments

---

## Linux Basics

### Kernel
The kernel is the core of the Linux operating system.  
It manages CPU, memory, devices, and system calls.

### Shell
The shell is a command interpreter that allows users to interact with the system.

Common shells:
- `bash`
- `zsh`
- `fish`

### Terminal
The terminal is the text-based interface where shell commands are entered and executed.

### Distributions (Distros)
Linux comes in many distributions, each tailored for different use cases:

- Ubuntu
- Debian
- CentOS / RHEL
- Amazon Linux

---

## Linux File System

Linux uses a hierarchical file system structure:

| Path | Purpose |
|----|----|
| `/` | Root directory |
| `/home` | User home directories |
| `/etc` | Configuration files |
| `/var` | Logs and variable data |
| `/bin` | Essential system binaries |
| `/usr` | User applications and libraries |

### Common File Commands
```bash
pwd            # Show current directory
ls -l          # List files with details
cd /path       # Change directory
mkdir test     # Create directory
rm file.txt    # Delete file
cp a b         # Copy file
mv a b         # Move or rename file
File Permissions
Each file has three permission types:

Read (r)

Write (w)

Execute (x)

Permissions apply to:

Owner (u)

Group (g)

Others (o)

Permission Commands
ls -l
chmod 755 script.sh
chown user:group file
Processes & Services
Linux runs programs as processes and manages long-running services.

Process Management
ps aux
top
kill <PID>
Service Management
systemctl start nginx
systemctl stop nginx
systemctl status nginx
Package Management
Different Linux distributions use different package managers.

Debian / Ubuntu
sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y
CentOS / Amazon Linux
sudo yum update -y
sudo yum install nginx -y
DevOps relevance:

Installing dependencies on servers

Automating installations in CI/CD pipelines

Users & Groups
Linux supports multi-user environments with controlled permissions.

Common Commands
whoami
id
adduser devops
passwd devops
usermod -aG sudo devops
groups
DevOps relevance:

Secure server access

Least-privilege principle

Managing production environments safely

Environment Variables
What Are Environment Variables?
Environment variables store dynamic configuration values used by programs.

Examples:

PATH

HOME

DB_HOST

API_KEY

Common Commands
printenv
echo $VAR_NAME
export VAR_NAME=value
unset VAR_NAME
DevOps relevance:

Secure configuration

CI/CD pipelines

Environment portability

Binary & Octal Representation
Binary
Base-2 number system using 0 and 1.

Example:

Decimal 10 → Binary 1010

Octal
Base-8 number system used for Linux permissions.

Example:

chmod 755 → rwxr-xr-x

Programs, Binaries & Shells
Programs
Executable instructions that perform tasks.

Binaries
Compiled programs executed directly by the OS.

Examples:

ls

cp

mv

Shells
Interfaces for executing commands and scripts.

DevOps relies heavily on shell scripting for automation.

Configuration Files
Configuration files define how systems and applications behave.

Examples:

/etc/nginx/nginx.conf

.env

config.yaml

Why they matter:

Separation of config from code

Environment flexibility

Automation and reproducibility

Practical Learning: OverTheWire Bandit
To reinforce these Linux fundamentals, I practiced using the
OverTheWire Bandit wargame.

Bandit focuses on:

File permissions

SSH usage

Text processing

Shell behavior

Linux security concepts

Each level requires applying real Linux commands to retrieve the next password.

Why Bandit Matters for DevOps
Builds strong command-line intuition

Teaches real-world troubleshooting

Reinforces Linux fundamentals through repetition

Mirrors real server environments

All completed Bandit levels are documented in individual levelX.md files.

Summary
Linux is the foundation of DevOps.
Through structured learning and hands-on practice using OverTheWire Bandit, I strengthened my understanding of:

Linux internals

File systems and permissions

Processes and services

Users, groups, and security

Automation-ready command-line workflows


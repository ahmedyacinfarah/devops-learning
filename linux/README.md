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


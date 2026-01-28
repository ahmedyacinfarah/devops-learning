Linux Fundamentals for DevOps
Introduction

Linux is an open-source operating system responsible for managing hardware resources, running applications, and enabling networking. It is the backbone of modern infrastructure and is essential for DevOps engineers.

In DevOps, Linux is not optional — it is a core requirement:

Most cloud servers (AWS, Azure, GCP) run Linux

Tools like Docker, Kubernetes, Ansible, and Terraform are built around Linux

Automation, security, networking, and CI/CD pipelines are primarily managed through Linux systems

Mastering Linux fundamentals is a prerequisite for working effectively in DevOps environments.

1. Linux Basics
Key Components

Kernel
The core of Linux that communicates directly with hardware and manages system resources.

Shell
A command-line interpreter that processes user commands (e.g., bash, zsh).

Terminal
A text-based interface where users interact with the shell.

Distributions (Distros)
Different versions of Linux packaged with tools and package managers.
Examples: Ubuntu, Debian, CentOS, Amazon Linux.

2. Linux File System

Linux uses a hierarchical directory structure:

Directory	Purpose
/	Root directory
/home	User home directories
/etc	Configuration files
/var	Logs and variable data
/bin	Essential binaries
/usr	User applications and libraries
Common File System Commands
pwd            # Show current directory
ls -l          # List files with details
cd /path       # Change directory
mkdir test     # Create directory
rm file.txt    # Remove file
cp a b         # Copy file
mv a b         # Move or rename file


DevOps relevance:
Managing application files, logs, configurations, and deployment directories.

3. File Permissions

Every file in Linux has permissions for:

Owner (u)

Group (g)

Others (o)

Permission types:

Read (r)

Write (w)

Execute (x)

Commands
ls -l                 # View permissions
chmod 755 file.sh     # Change permissions
chown user:group f   # Change ownership


DevOps relevance:
Securing servers, controlling access, and ensuring services run with least privilege.

4. Processes & Services

Linux runs programs as processes and manages long-running applications as services.

Commands
ps aux                  # List processes
top                     # Monitor processes
kill <PID>              # Terminate process
systemctl start nginx
systemctl stop nginx
systemctl status nginx


DevOps relevance:
Monitoring applications, debugging failures, managing services in production.

5. Package Management

Linux distributions use package managers to install and update software.

Ubuntu / Debian
sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y

CentOS / Amazon Linux
sudo yum update -y
sudo yum install nginx -y


DevOps relevance:
Automating dependency installation in servers and CI/CD pipelines.

6. Users & Groups

Linux supports multi-user environments with strict permission controls.

Commands
whoami
id
adduser devops
passwd devops
usermod -aG sudo devops
groups


DevOps relevance:

Managing multiple engineers on shared servers

Restricting production access

Avoiding root usage for security

7. Environment Variables
What Are Environment Variables?

Environment variables store dynamic values that applications can access at runtime. They allow configuration without hardcoding values.

Examples:

PATH

HOME

DB_HOST

API_KEY

Common Commands (Linux)
env
printenv
echo $VAR_NAME
export VAR_NAME=value
unset VAR_NAME


DevOps relevance:

Secure configuration management

CI/CD pipelines (GitHub Actions, GitLab CI, Jenkins)

Environment-specific deployments

8. Binary and Octal Representation
Binary (Base-2)

Used internally by computers.

Example:

Decimal 10 → Binary 1010

Octal (Base-8)

Used heavily in Linux permissions.

Example:

chmod 755 file

7 → rwx

5 → r-x

5 → r-x

DevOps relevance:
Understanding permissions, low-level system behavior, and security configurations.

9. Programs, Binaries, and Shells

Programs: Software that performs tasks

Binaries: Compiled machine-readable executables (ls, cp, mv)

Shells: Interfaces that allow command execution and scripting

DevOps relevance:
Automation, scripting, process control, and system interaction.

10. Configuration Files

Configuration files define how systems and applications behave.

Examples:

/etc/nginx/nginx.conf

.env

config.yaml

Why they matter:

Separate configuration from code

Enable environment-specific setups

Support automation and scalability

11. Reinforcement Through Practice: OverTheWire Bandit

To reinforce these Linux fundamentals, I practiced using the OverTheWire Bandit wargame.

The Bandit game forces hands-on usage of:

File permissions

SSH

Text processing

Environment variables

Networking tools

Command-line utilities

By repeatedly solving Bandit levels, I strengthened my command-line confidence and problem-solving skills. This practical repetition is critical, as Linux proficiency forms the foundation of all DevOps work.

Final Takeaway

Linux is the backbone of DevOps. Through structured learning and hands-on practice using tools like the OverTheWire Bandit game, these core concepts become second nature — enabling efficient, secure, and automated infrastructure management

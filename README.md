Introduction
Linux is an open-source operating system that manages computer hardware, runs applications, and enables networking. It is the most widely used OS in servers, cloud platforms, DevOps environments, and containers.

For DevOps, Linux is not optional — it’s a core skill:

Most cloud servers (AWS, Azure, GCP) run Linux.
Tools like Docker, Kubernetes, and Ansible rely heavily on Linux.
Networking, security, and automation tasks are done best in Linux.
1. Basics of Linux
Kernel: The heart of Linux that communicates with hardware.
Shell: The program that takes commands from the user (e.g., bash, zsh).
Terminal: The text-based interface where commands are entered.
Distributions (Distros): Versions of Linux such as Ubuntu, CentOS, Debian, Amazon Linux.
2. File System
Linux organizes data into a hierarchical file system:

/ → Root directory
/home → User files
/etc → Configurations
/var → Logs and variable data
/bin → Essential binaries
/usr → User programs and libraries
Useful Commands
pwd          # Show current working directory
ls -l        # List files with details
cd /path     # Change directory
mkdir test   # Create directory
rm file.txt  # Remove file
cp a b       # Copy file
mv a b       # Move/rename file
File Permissions
Every file in Linux has three types of permissions:

Read (r), Write (w), Execute (x)

Permissions apply to:

Owner (u)

Group (g)

Others (o)

Commands

ls -l                # View file permissions
chmod 755 file.sh    # Change permissions (rwxr-xr-x)
chown user:group f   # Change ownership

Processes & Services
Linux runs background processes and system services.

Commands

ps aux          # List all processes
top             # Monitor running processes
kill <PID>      # Kill process by ID
systemctl start nginx     # Start a service
systemctl stop nginx      # Stop a service
systemctl status nginx    # Check service status
Package Management
Linux distributions have package managers for installing/updating software.

Debian/Ubuntu: apt

CentOS/RHEL/Amazon Linux: yum or dnf

Commands 

# Ubuntu
sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y

# Amazon Linux / CentOS
sudo yum update -y
sudo yum install nginx -y
DevOps relevance:
Installing dependencies in servers.

Automating software installation in CI/CD pipelines.

Users & Groups
Linux supports multi-user environments with permissions controlled by groups.

Commands 
whoami                   # Show current user
id                       # Show user & group IDs
adduser devops           # Create new user
passwd devops            # Set password
usermod -aG sudo devops  # Add user to sudoers
groups                   # Show groups
DevOps relevance:

Managing multiple engineers on the same server.

Restricting access to production servers.

Following security best practices (not using root).

Environment Variables: Summary for DevOps
1. What Are Environment Variables?
Environment variables are dynamic values stored in a system’s environment that programs and processes can access. They help configure the behavior of applications without hardcoding sensitive or system-specific data (like paths, credentials, or configuration options).

Examples:

PATH → directories to search for executables.
HOME → user’s home directory.
DB_HOST → database server host (custom variable).
2. Common Commands for Environment Variables
On Linux/macOS (Unix-based systems)
Task	Command	Description
View all variables	printenv or env	Lists all environment variables
View specific variable	echo $VAR_NAME	Displays value of VAR_NAME
Set variable (temporary)	VAR_NAME=value	Sets variable for the current session
Set variable (exported)	export VAR_NAME=value	Makes variable available to child processes
Unset variable	unset VAR_NAME	Removes a variable from the environment
On Windows (Command Prompt & PowerShell)
Task	Command	Description
View all variables	set (CMD) or Get-ChildItem Env: (PowerShell)	Lists variables
View specific variable	echo %VAR_NAME% (CMD) or $Env:VAR_NAME (PowerShell)	Shows value
Set variable (temporary)	set VAR_NAME=value (CMD) or $Env:VAR_NAME="value" (PowerShell)	Available for session
Set variable (permanent)	Use System Properties → Environment Variables	Persists across sessions
Remove variable	set VAR_NAME= (CMD) or Remove-Item Env:VAR_NAME (PowerShell)	Deletes variable
3. Relevance to DevOps
Environment variables are critical in DevOps pipelines for several reasons:

Configuration Management

Avoids hardcoding environment-specific settings.
Example: DB_HOST, API_KEY, ENV=production.
Security

Store secrets (passwords, tokens) without committing them to source code.
Often integrated with secret management tools (e.g., HashiCorp Vault, AWS Secrets Manager).
CI/CD Pipelines

Used in tools like Jenkins, GitLab CI/CD, or GitHub Actions to pass environment-specific data between build, test, and deployment stages.
Portability

Makes applications portable across environments (development, staging, production) without changing code.
Automation & Scripting

Scripts can dynamically read variables to perform tasks based on the environment.
Example: deploy.sh can behave differently based on ENV=staging or ENV=production.
Summary: Environment variables are like dynamic system settings that allow DevOps engineers to manage configuration, security, and automation efficiently across multiple environments and pipelines.

Binary and Octal Representation: Summary
1. Binary Representation
Binary is a base-2 numeral system using only 0 and 1. It's the foundation of all computer operations.

Examples:

Decimal 5 → Binary 101
Decimal 10 → Binary 1010
Use in DevOps:

Configuring permissions (chmod in Linux uses binary/octal)
Low-level network configurations
Commands / Conversions:

Decimal to binary: bin(10) in Python → '0b1010'
Binary to decimal: int('1010', 2) → 10
2. Octal Representation
Octal is a base-8 numeral system using digits 0-7. It's often used for Unix file permissions.

Examples:

Decimal 8 → Octal 10
Decimal 64 → Octal 100
Use in DevOps:

File permissions: chmod 755 file (7→rwx, 5→r-x, 5→r-x)
Representing grouped binary values concisely
Commands / Conversions:

Decimal to octal: oct(64) in Python → '0o100'
Octal to decimal: int('100', 8) → 64
Summary: Binary and octal are numeral systems crucial for computing and DevOps tasks, mainly for permissions, low-level configurations, and compact representation of data.

Users and Groups: Summary
1. Users
Users represent individual accounts on a system, each with unique credentials and permissions.

Key Points:

Each user has a username and a UID (User ID).
Users can belong to groups.
Common system users: root (superuser), nobody.
Commands:

Create user: useradd username
Delete user: userdel username
View users: cat /etc/passwd
Change password: passwd username
DevOps Use:

Managing system access
Automating deployments with service accounts
Ensuring least privilege for security
2. Groups
Groups are collections of users sharing permissions.

Key Points:

Each group has a group name and GID (Group ID).
Users can belong to multiple groups.
Groups simplify permission management.
Commands:

Create group: groupadd groupname
Delete group: groupdel groupname
View groups: cat /etc/group
Add user to group: usermod -aG groupname username
DevOps Use:

Controlling access to files, directories, and resources
Managing permissions for CI/CD pipelines
Organizing users for automated tasks
Summary: Users and groups are fundamental for system access control, security, and DevOps automation, enabling organized and secure management of accounts and permissions.

Basic Linux Commands: Summary
1. mkdir
Creates directories.

Usage:

mkdir directory_name
mkdir -p parent/child  # create parent and child directories
DevOps Use:

Setting up project folders or deployment directories
2. cp
Copies files or directories.

Usage:

cp source_file destination_file
cp -r source_dir destination_dir  # copy directories recursively
DevOps Use:

Backup files
Copy configurations or deployment artifacts
3. mv
Moves or renames files/directories.

Usage:

mv old_name new_name
mv file /new/path/
DevOps Use:

Organize files
Rename deployment artifacts
4. rm
Removes files or directories.

Usage:

rm file_name
rm -r directory_name  # remove directories recursively
rm -f file_name  # force remove
DevOps Use:

Clean up temporary files
Remove old deployments
5. ls
Lists files and directories.

Usage:

ls
ls -l  # detailed listing
ls -a  # include hidden files
DevOps Use:

Check directory contents
Validate deployments
6. pwd
Prints the current working directory.

Usage:

pwd
DevOps Use:

Ensure correct directory before running scripts
Summary: These basic Linux commands (mkdir, cp, mv, rm, ls, pwd) are essential for file and directory management, making them fundamental tools for DevOps tasks and automation.

Programs, Binaries, and Shells: Overview Summary
1. Programs
Programs are sets of instructions executed by a computer to perform specific tasks.

How used:

Applications like text editors, web servers, or scripts
Automate tasks in DevOps pipelines
Why used:

To execute tasks efficiently
Provide user-facing functionality or automation
2. Binaries
Binaries are compiled programs in machine-readable format, usually resulting from source code compilation.

How used:

Run directly by the operating system
System commands like ls, cp, mv
Why used:

Faster execution than interpreted scripts
Direct interaction with OS resources
3. Shells
Shells are command-line interpreters that allow users to interact with the operating system.

How used:

Execute commands, run scripts, and manage processes
Common shells: Bash, Zsh, Fish
Why used:

Provides automation through scripting
Control over system processes and resources
Essential for DevOps and server management
Summary: Programs, binaries, and shells form the core of software execution and system interaction, enabling efficient automation, task execution, and DevOps workflows.

Configuration Files: Overview Summary
What are Configuration Files?
Configuration files are files that store settings and parameters for applications, services, or the operating system.

How they are used
Define application behavior without changing code
Store environment-specific settings (e.g., database connections, API keys)
Examples: /etc/nginx/nginx.conf, .env files, config.yaml
Why they are used
Separation of configuration from code: Easier to manage and update
Flexibility: Different environments (development, staging, production) can use different configurations
Automation & DevOps: Scripts and deployment tools can read configurations to automate tasks
Summary: Configuration files are essential for maintaining application and system settings, enabling flexibility, security, and automation in DevOps workflows.

Exercises used to reinforce and strengthen Linux understanding
Playing the OverTheWire Bandit game allows me to practice using these common Linux commands. The repetition of using these commmands familiarises myself with Linux. This is fundamental as Linux is the foundation for all DevOps practices.

# OSS Audit - Git

**Student Name:** YADVENDRA Raj Yadav  
**Registration Number:** 24BCE10366  
**Course:** Open Source Software  
**Chosen Software:** Git

This repository contains the five shell scripts required for the Open Source Audit project based on **Git**.

## Repository Contents

- `script1_system_identity_report.sh`
- `script2_foss_package_inspector.sh`
- `script3_disk_and_permission_auditor.sh`
- `script4_log_file_analyzer.sh`
- `script5_open_source_manifesto_generator.sh`

## Script Descriptions

### 1. System Identity Report
Displays the Linux distribution name, kernel version, current user, home directory, system uptime, date/time, and the open-source license that covers the Linux kernel.

### 2. FOSS Package Inspector
Checks whether a package is installed on the system. It supports both `dpkg` and `rpm` based Linux systems, prints version details, and uses a `case` statement to show a short description of the package.

### 3. Disk and Permission Auditor
Loops through important Linux directories and prints their permissions, owner/group, and disk usage. It also checks Git-specific configuration files such as `/etc/gitconfig` and `~/.gitconfig`.

### 4. Log File Analyzer
Reads a log file line by line, counts occurrences of a chosen keyword such as `ERROR` or `WARNING`, and prints the last five matching lines.

### 5. Open Source Manifesto Generator
Takes interactive input from the user and generates a short open-source manifesto paragraph, saving it into a `.txt` file.

## How to Run on Linux

### Step 1: Give execute permission
```bash
chmod +x script1_system_identity_report.sh
chmod +x script2_foss_package_inspector.sh
chmod +x script3_disk_and_permission_auditor.sh
chmod +x script4_log_file_analyzer.sh
chmod +x script5_open_source_manifesto_generator.sh
```

### Step 2: Run the scripts
```bash
./script1_system_identity_report.sh
./script2_foss_package_inspector.sh git
./script3_disk_and_permission_auditor.sh
./script4_log_file_analyzer.sh /var/log/syslog ERROR
./script5_open_source_manifesto_generator.sh
```

## Dependencies

These scripts are designed for a Linux system and use standard command-line tools such as:

- `bash`
- `uname`
- `whoami`
- `uptime`
- `date`
- `grep`
- `cut`
- `awk`
- `ls`
- `du`
- `tail`
- `dpkg` or `rpm`

## Notes

- Script 2 defaults to checking `git` if no package name is provided.
- Script 4 requires a valid log file path.
- Script 5 creates an output file in the current working directory.

## Suggested Screenshots for Report

You can attach screenshots of:
- Running Script 1 successfully
- Script 2 checking Git installation
- Script 3 displaying directory permissions
- Script 4 analyzing a real Linux log file
- Script 5 generating the manifesto file

## Academic Note

These scripts were prepared for the OSS audit project on **Git** and are intended to demonstrate shell scripting concepts such as:

- variables
- command substitution
- if-then-else
- case statement
- for loop
- while-read loop
- file output
- interactive input
- comments and documentation


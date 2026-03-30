#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: YADVENDRA RAJ YADAV
# Registration Number: 24BCE10366
# Course: Open Source Software
# Chosen Software: Git
#
# Purpose:
# This script loops through important Linux directories and reports:
# 1. Whether the directory exists
# 2. Owner and group
# 3. Permission string
# 4. Human-readable size
#
# It also checks Git's configuration locations.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================================"
echo "              DISK AND PERMISSION AUDITOR                   "
echo "============================================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # ls -ld gives details of the directory itself, not its contents.
        DETAILS=$(ls -ld "$DIR")
        PERMS=$(echo "$DETAILS" | awk '{print $1}')
        OWNER=$(echo "$DETAILS" | awk '{print $3}')
        GROUP=$(echo "$DETAILS" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Owner/Group: $OWNER / $GROUP"
        echo "Size       : $SIZE"
        echo "------------------------------------------------------------"
    else
        echo "Directory : $DIR"
        echo "Status    : Does not exist on this system"
        echo "------------------------------------------------------------"
    fi
done

echo "Git-specific configuration check"
echo "------------------------------------------------------------"

if [ -f /etc/gitconfig ]; then
    echo "/etc/gitconfig exists (system-wide Git configuration)"
    ls -l /etc/gitconfig
else
    echo "/etc/gitconfig not found"
fi

if [ -f "$HOME/.gitconfig" ]; then
    echo "$HOME/.gitconfig exists (user-level Git configuration)"
    ls -l "$HOME/.gitconfig"
else
    echo "$HOME/.gitconfig not found"
fi

echo "============================================================"

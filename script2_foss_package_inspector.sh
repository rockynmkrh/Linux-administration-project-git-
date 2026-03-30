#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: YADVENDRA RAJ YADAV
# Registration Number: 24BCE10366
# Course: Open Source Software
# Chosen Software: Git
#
# Purpose:
# This script checks whether a package is installed on the Linux system.
# It supports both Debian-based systems (dpkg) and RPM-based systems (rpm).
# It prints version details and a short purpose note using a case statement.

PACKAGE="${1:-git}"

echo "============================================================"
echo "                 FOSS PACKAGE INSPECTOR                     "
echo "============================================================"
echo "Package selected: $PACKAGE"
echo "------------------------------------------------------------"

# Function to print a short description using case statement
print_description() {
    case "$1" in
        git)
            echo "Description : Git is a distributed version control system used to track code changes."
            ;;
        apache2|httpd)
            echo "Description : Apache HTTP Server is an open-source web server."
            ;;
        python3|python)
            echo "Description : Python is a high-level programming language used in many domains."
            ;;
        mysql-server|mysql)
            echo "Description : MySQL is an open-source relational database management system."
            ;;
        vlc)
            echo "Description : VLC is an open-source multimedia player that supports many formats."
            ;;
        *)
            echo "Description : No predefined description found for this package."
            ;;
    esac
}

# Check installation with dpkg or rpm
if command -v dpkg >/dev/null 2>&1; then
    if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "Status      : INSTALLED (detected using dpkg)"
        VERSION=$(dpkg -s "$PACKAGE" | grep '^Version:' | cut -d' ' -f2-)
        echo "Version     : $VERSION"
    else
        echo "Status      : NOT INSTALLED (checked using dpkg)"
    fi
elif command -v rpm >/dev/null 2>&1; then
    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        echo "Status      : INSTALLED (detected using rpm)"
        VERSION=$(rpm -qi "$PACKAGE" | grep '^Version' | awk -F': ' '{print $2}')
        RELEASE=$(rpm -qi "$PACKAGE" | grep '^Release' | awk -F': ' '{print $2}')
        echo "Version     : $VERSION"
        echo "Release     : $RELEASE"
    else
        echo "Status      : NOT INSTALLED (checked using rpm)"
    fi
else
    echo "Status      : Package manager not supported by this script."
fi

print_description "$PACKAGE"
echo "============================================================"

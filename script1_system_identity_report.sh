#!/bin/bash
# Script 1: System Identity Report
# Author: YADVENDRA RAJ YADAV
# Registration Number: 24BCE10366
# Course: Open Source Software
# Chosen Software: Git
#
# Purpose:
# This script prints a welcome-style system report for a Linux machine.
# It shows the distribution name, kernel version, current user, home directory,
# uptime, date/time, and the open-source license used by the Linux kernel.

# --- Student and software details ---
STUDENT_NAME="YADVENDRA RAJ YADAV"
REG_NO="24BCE10366"
SOFTWARE_CHOICE="Git"

# --- Collect system information ---
if [ -f /etc/os-release ]; then
    DISTRO_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO_NAME="Unknown Linux Distribution"
fi

KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
HOME_DIR="$HOME"
SYSTEM_UPTIME=$(uptime -p 2>/dev/null)
CURRENT_DATE_TIME=$(date)

# The Linux kernel is licensed under GPLv2.
OS_LICENSE="GNU General Public License version 2 (GPLv2)"

# --- Display formatted output ---
echo "============================================================"
echo "              OPEN SOURCE AUDIT - SYSTEM REPORT             "
echo "============================================================"
echo "Student Name      : $STUDENT_NAME"
echo "Registration No.  : $REG_NO"
echo "Chosen Software   : $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"
echo "Linux Distro      : $DISTRO_NAME"
echo "Kernel Version    : $KERNEL_VERSION"
echo "Logged-in User    : $CURRENT_USER"
echo "Home Directory    : $HOME_DIR"
echo "System Uptime     : $SYSTEM_UPTIME"
echo "Current Date/Time : $CURRENT_DATE_TIME"
echo "OS License        : $OS_LICENSE"
echo "============================================================"

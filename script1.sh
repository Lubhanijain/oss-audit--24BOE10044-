#!/bin/bash
# Script 1: System Identity Report
# Author: Lubhani Jain | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Lubhani Jain"
SOFTWARE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date "+%d-%m-%Y %H:%M:%S")
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "=========================================="
echo "       PYTHON OPEN SOURCE AUDIT"
echo "=========================================="
echo " Student Name    : $STUDENT_NAME"
echo " Software Chosen : $SOFTWARE"
echo "------------------------------------------"
echo " Linux Distro    : $DISTRO"
echo " Kernel Version  : $KERNEL"
echo " Current User    : $USER_NAME"
echo " Home Directory  : $HOME_DIR"
echo " System Uptime   : $UPTIME"
echo " Date & Time     : $DATE_TIME"
echo "------------------------------------------"
echo " License Info    : GNU General Public License (GPL)"
echo "=========================================="

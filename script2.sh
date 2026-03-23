#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Lubhani Jain | Course: Open Source Software

# --- Variable ---
PACKAGE="python3"

echo "=========================================="
echo "     FOSS Package Audit: $PACKAGE"
echo "=========================================="

# --- Check if package is installed ---
if dpkg -l | grep -q $PACKAGE; then
    echo "[OK] $PACKAGE is installed."
    echo "------------------------------------------"
    echo "Version:"
    python3 --version
    echo "------------------------------------------"
else
    echo "[ERROR] $PACKAGE is NOT installed."
fi

# --- Case statement (philosophy note) ---
case $PACKAGE in
    python3)
        echo "Python: A community-driven language focused on simplicity and readability."
        ;;
    apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql*)
        echo "MySQL: Open source at the heart of millions of applications."
        ;;
    firefox)
        echo "Firefox: A browser supporting an open and free web."
        ;;
    *)
        echo "FOSS promotes collaboration and transparency."
        ;;
esac

#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Lubhani Jain | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "       DIRECTORY AUDIT REPORT"
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------------"

# Check Python config directory
PY_CONF="/etc/python3"

if [ -d "$PY_CONF" ]; then
    echo "Python Config Directory Found:"
    ls -ld "$PY_CONF"
else
    echo "Python config directory not found."
fi

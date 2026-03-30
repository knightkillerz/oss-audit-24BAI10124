#!/bin/bash
# Script 3: Disk and Permission Auditor (Fixed)

DIRS=("/c/Windows" "/c/Users" "/c/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo "Checking: $DIR"
        
        PERMS=$(ls -ld "$DIR" 2>/dev/null)
        SIZE="Calculation skipped (large directory)"

        echo "$DIR =>"
        echo "Permissions: $PERMS"
        echo "Size: $SIZE"
        echo "----------------------"
    else
        echo "$DIR does not exist"
    fi
done

# Check Git config
if [ -f "$HOME/.gitconfig" ]; then
    echo ".gitconfig exists"
    ls -l "$HOME/.gitconfig"
else
    echo ".gitconfig not found"
fi
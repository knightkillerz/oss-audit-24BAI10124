#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if git is installed
if command -v git >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    git) echo "Git: distributed version control system for tracking code changes" ;;
    apache2) echo "Apache: web server powering many websites" ;;
    mysql) echo "MySQL: database system used in many applications" ;;
    vlc) echo "VLC: media player supporting multiple formats" ;;
    *) echo "Unknown package" ;;
esac
#!/bin/bash

# Clean /tmp and /var/tmp directories
echo "Cleaning /tmp and /var/tmp..."
rm -rf /tmp/*
rm -rf /var/tmp/*

# Clean package manager cache (apt, dnf, pacman)
echo "Cleaning package manager cache..."
if command -v apt-get &> /dev/null; then
    sudo apt-get clean
    sudo apt-get autoremove -y
elif command -v dnf &> /dev/null; then
    sudo dnf clean all
    sudo dnf autoremove -y
elif command -v pacman &> /dev/null; then
    sudo pacman -Scc --noconfirm
else
    echo "Unsupported package manager"
fi

# Clean journal logs
echo "Cleaning journal logs..."
sudo journalctl --vacuum-time=7d

# Clean Trash
echo "Cleaning Trash..."
rm -rf ~/.local/share/Trash/*

echo "Linux cleanup complete."

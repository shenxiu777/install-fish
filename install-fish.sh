#!/bin/bash

# Check if script is run with sudo
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo"
    exit 1
fi

# Install fish without confirmation
apt install -y fish

# Change the current user's shell to fish (using sudo to avoid password prompt)
chsh -s /usr/bin/fish "$SUDO_USER"

# Create fish config directory for the user if it doesn't exist
mkdir -p "/home/$SUDO_USER/.config/fish"
# Download fish configuration file
curl -o "/home/$SUDO_USER/.config/fish/config.fish" https://raw.githubusercontent.com/shenxiu777/install-fish/refs/heads/main/config.fish
# Ensure correct ownership of the config directory and file
chown -R "$SUDO_USER:$SUDO_USER" "/home/$SUDO_USER/.config/fish"

# Create fish config directory for the root user if it doesn't exist
mkdir -p "/root/.config/fish"
# Download fish configuration file for the root user
curl -o "/root/.config/fish/config.fish" https://raw.githubusercontent.com/shenxiu777/install-fish/refs/heads/main/config.fish

echo "Fish installed and configured successfully for $SUDO_USER!"

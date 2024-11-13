#!/bin/bash

# Enable ufw
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specified services
sudo ufw allow http       # HTTP (port 80)
sudo ufw allow https      # HTTPS (port 443)
sudo ufw allow dns        # DNS (port 53)
sudo ufw allow ssh        # SSH (port 22)
sudo ufw allow ftp        # FTP (port 21)
sudo ufw allow smtp       # SMTP (port 25)
sudo ufw allow 67/udp     # DHCP Server (port 67)
sudo ufw allow 68/udp     # DHCP Client (port 68)
sudo ufw allow imap       # IMAP (port 143)

# Reload ufw to apply changes
sudo ufw reload

# Display the current ufw status
sudo ufw status verbose

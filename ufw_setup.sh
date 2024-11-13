#!/bin/bash

# Enable ufw
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specified services by specifying ports and protocols
sudo ufw allow 443/tcp      # HTTPS (port 443)
sudo ufw allow 80/tcp       # HTTP (port 80)
sudo ufw allow 53           # DNS (port 53 TCP and UDP)
sudo ufw allow 22/tcp       # SSH (port 22)
sudo ufw allow 21/tcp       # FTP (port 21)
sudo ufw allow 25/tcp       # SMTP (port 25)
sudo ufw allow 67/udp       # DHCP Server (port 67)
sudo ufw allow 68/udp       # DHCP Client (port 68)
sudo ufw allow 143/tcp      # IMAP (port 143)

# Reload ufw to apply changes
sudo ufw reload

# Display the current ufw status
sudo ufw status verbose

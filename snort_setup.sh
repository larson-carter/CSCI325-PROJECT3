#!/bin/bash

# Update package lists
sudo apt-get update

# Install snort
sudo apt-get install -y snort

# Navigate to the temporary directory
cd /tmp

# Download community rules
wget https://www.snort.org/downloads/community/community-rules.tar.gz -O community-rules.tar.gz

# Extract the rules directly into /etc/snort/rules, removing the leading directory
sudo tar --strip-components=1 -xzf community-rules.tar.gz -C /etc/snort/rules

# Clean up the downloaded archive
rm community-rules.tar.gz

# Include the community rules in snort.conf if not already included
if ! sudo grep -Fxq "include \$RULE_PATH/community.rules" /etc/snort/snort.conf; then
    echo "include \$RULE_PATH/community.rules" | sudo tee -a /etc/snort/snort.conf
fi

echo "Snort community rules have been set up."

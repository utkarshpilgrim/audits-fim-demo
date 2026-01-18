#!/bin/bash

# Install auditd (Ubuntu/Debian)
sudo apt update
sudo apt install -y auditd audispd-plugins

# Start and enable
sudo systemctl start auditd
sudo systemctl enable auditd

echo "Auditd installed and enabled."
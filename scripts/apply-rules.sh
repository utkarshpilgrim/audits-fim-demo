#!/bin/bash

# Copy rules to system (assuming run as sudo)
cp /vagrant/configs/audit.rules.d/*.rules /etc/audit/rules.d/

# Load rules
sudo augenrules --load
sudo systemctl restart auditd

# Verify
sudo auditctl -l

echo "Rules applied and auditd restarted."
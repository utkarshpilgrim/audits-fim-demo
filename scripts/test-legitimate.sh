#!/bin/bash

# Simulate legitimate access
sudo cat /etc/shadow > /dev/null
sudo chmod 644 /etc/shadow  # Attribute change (revert after)

echo "Legitimate tests run. Check logs with ausearch -k shadow_access"
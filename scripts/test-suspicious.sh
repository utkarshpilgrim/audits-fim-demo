#!/bin/bash

# Simulate rogue Python script reading /etc/shadow (will fail if non-root, but logs attempt)
python3 -c "try: open('/etc/shadow').read(); print('Rogue access attempted'); except: print('Access denied as expected')"

echo "Suspicious test run. Check logs with ausearch -k suspicious_shadow_read"
#!/bin/bash

# Master setup: Install, apply rules, run tests
bash /vagrant/scripts/install-auditd.sh
bash /vagrant/scripts/apply-rules.sh

# Optional: Run tests
# bash /vagrant/scripts/test-legitimate.sh
# bash /vagrant/scripts/test-suspicious.sh
# bash /vagrant/scripts/search-logs.sh

echo "Lab setup complete. Explore /var/log/audit/audit.log"
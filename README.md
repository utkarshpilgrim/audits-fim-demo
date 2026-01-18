# Auditd File Integrity Monitoring (FIM) Demo

A medium-level hands-on project to explore Linux Auditd for monitoring file access and integrity, based on the provided theory. This repo sets up a lab environment to configure auditd, add rules for sensitive files (e.g., /etc/shadow, /etc/sudoers), test legitimate vs. suspicious accesses, and analyze logs. As an Application Security Engineer, this demonstrates real-world auditing for detecting credential dumping or privilege escalation attempts.

## Project Goals
- Understand auditd's role in logging file events (reads, writes, attributes).
- Configure persistent rules to monitor sensitive files without high noise.
- Simulate and detect rogue processes (e.g., unauthorized reads).
- Tie into AppSec: Forensic analysis for incident response and compliance (CIS, PCI).

## Prerequisites
- macOS/Linux host with Vagrant and VirtualBox (or Docker for container option).
- Basic Bash knowledge.
- For production feel: Run in a VM to avoid messing with your host.

## Quick Setup
1. Clone the repo:

```
https://github.com/utkarshpilgrim/audits-fim-demo.git
cd auditd-fim-demo
```


2. Launch the lab VM (Vagrant):

```
sudo bash /vagrant/scripts/setup-lab.sh
```


4. Test and analyze:
- Run legitimate test: `sudo bash /vagrant/scripts/test-legitimate.sh`
- Run suspicious test: `bash /vagrant/scripts/test-suspicious.sh`
- Search logs: `sudo bash /vagrant/scripts/search-logs.sh`

## Directory Structure
- `configs/`: Auditd rules and conf files.
- `scripts/`: Automation for install, tests, and analysis.
- `docs/`: Theory and guides.
- `Vagrantfile`: VM provisioning.
- `Dockerfile`: Container alternative.

## How It Works
- Installs auditd.
- Applies rules from `configs/audit.rules.d/` to monitor /etc/shadow, /etc/sudoers, etc.
- Tests simulate accesses, generating logs in /var/log/audit/audit.log.
- Use `ausearch` to filter by keys (e.g., shadow_access).

## Customization
- Edit `fim.rules` to add more files (e.g., /etc/passwd).
- For exclusions, modify `exclusions.rules` to filter legit processes.

**Disclaimer**: This is for educational/AppSec lab use. Do not run on production without tuning for noise/performance.
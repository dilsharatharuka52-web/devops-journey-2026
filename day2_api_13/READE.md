# Linux Hardening Script

Automates basic security hardening for Ubuntu/Debian Linux servers.

## What It Does
- Hardens SSH (disables root login, password auth, limits retries)
- Configures UFW firewall (allow SSH, HTTP, HTTPS only)
- Installs and configures fail2ban (SSH brute-force protection)
- Enables automatic security updates
- Disables unused services (cups, avahi, bluetooth)

## Usage

### Normal run (makes changes):
sudo ./hardening.sh

### Dry run (shows what WOULD happen):
sudo ./hardening.sh --dry-run

## Requirements
- Ubuntu 20.04 / 22.04 (or Debian-based)
- Must be run as root

## WARNING
Run the dry-run first. Make sure you have SSH key access
before disabling password authentication or you will
lock yourself out.

## Author
Tharuka Dilshara
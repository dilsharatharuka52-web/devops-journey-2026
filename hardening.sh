#!/bin/bash
# ============================================
# Linux Hardening Script
# Author: Tharuka Dilshara
# Description: Automates basic Linux server hardening
# ============================================

# ---------- Colors ----------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ---------- Flags ----------
DRY_RUN=false
if [[ "$1" == "--dry-run" ]]; then
  DRY_RUN=true
  echo -e "${YELLOW}[DRY RUN] No changes will be made.${NC}"
fi

# ---------- Helper Functions ----------
log_info()    { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[OK]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error()   { echo -e "${RED}[ERROR]${NC} $1"; }

run_cmd() {
  if [ "$DRY_RUN" = true ]; then
    echo -e "${YELLOW}[DRY RUN]${NC} Would run: $*"
  else
    eval "$@"
  fi
}

# ---------- Root Check ----------
if [[ $EUID -ne 0 ]]; then
  log_error "This script must be run as root. Use: sudo ./hardening.sh"
  exit 1
fi

log_info "Starting Linux Hardening Script..."


# ============================================
# SECTION 1: SSH HARDENING
# ============================================
harden_ssh() {
  log_info "Starting SSH hardening..."

  SSHD_CONFIG="/etc/ssh/sshd_config"

  # Backup config first (idempotency: only backup once)
  if [ ! -f "$SSHD_CONFIG.bak" ]; then
    run_cmd cp "$SSHD_CONFIG" "$SSHD_CONFIG.bak"
    log_success "SSH config backed up to $SSHD_CONFIG.bak"
  else
    log_warning "Backup already exists, skipping backup."
  fi

  # Disable root login
  if grep -q "^PermitRootLogin yes" "$SSHD_CONFIG"; then
    run_cmd sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' "$SSHD_CONFIG"
    log_success "Root login disabled."
  else
    log_warning "Root login already disabled, skipping."
  fi

  # Disable password authentication
  if grep -q "^PasswordAuthentication yes" "$SSHD_CONFIG"; then
    run_cmd sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' "$SSHD_CONFIG"
    log_success "Password authentication disabled."
  else
    log_warning "Password auth already disabled, skipping."
  fi

  # Set MaxAuthTries
  if ! grep -q "^MaxAuthTries" "$SSHD_CONFIG"; then
    run_cmd echo "MaxAuthTries 3" >> "$SSHD_CONFIG"
    log_success "MaxAuthTries set to 3."
  else
    log_warning "MaxAuthTries already set, skipping."
  fi

  # Disable X11 forwarding
  if grep -q "^X11Forwarding yes" "$SSHD_CONFIG"; then
    run_cmd sed -i 's/^X11Forwarding yes/X11Forwarding no/' "$SSHD_CONFIG"
    log_success "X11 forwarding disabled."
  fi

  # Restart SSH service
  run_cmd systemctl restart sshd
  log_success "SSH service restarted."
}

harden_ssh









# ============================================
# SECTION 2: UFW FIREWALL
# ============================================
setup_ufw() {
  log_info "Setting up UFW firewall..."

  # Install UFW if not present
  if ! command -v ufw &> /dev/null; then
    log_info "UFW not found, installing..."
    run_cmd apt-get install -y ufw
  else
    log_warning "UFW already installed, skipping install."
  fi

  # Check if UFW is already active
  UFW_STATUS=$(ufw status | grep -o "active")
  if [ "$UFW_STATUS" == "active" ]; then
    log_warning "UFW already active, reconfiguring rules..."
  fi

  # Set default policies
  run_cmd ufw default deny incoming
  run_cmd ufw default allow outgoing
  log_success "Default policies set: deny incoming, allow outgoing."

  # Allow SSH (change 22 to your custom port if needed)
  SSH_PORT=22
  run_cmd ufw allow "$SSH_PORT"/tcp
  log_success "SSH port $SSH_PORT allowed."

  # Allow HTTP and HTTPS
  run_cmd ufw allow 80/tcp
  run_cmd ufw allow 443/tcp
  log_success "HTTP and HTTPS allowed."

  # Enable UFW
  run_cmd ufw --force enable
  log_success "UFW enabled and active."

  # Confirm status
  log_info "UFW Status:"
  ufw status verbose
}

setup_ufw










# ============================================
# SECTION 3: FAIL2BAN
# ============================================
setup_fail2ban() {
  log_info "Setting up fail2ban..."

  # Install if not present (idempotency check)
  if ! command -v fail2ban-client &> /dev/null; then
    run_cmd apt-get install -y fail2ban
    log_success "fail2ban installed."
  else
    log_warning "fail2ban already installed, skipping install."
  fi

  # Create local jail config if it doesn't exist
  JAIL_LOCAL="/etc/fail2ban/jail.local"
  if [ ! -f "$JAIL_LOCAL" ]; then
    run_cmd bash -c "cat > $JAIL_LOCAL << 'EOF'
[DEFAULT]
bantime  = 3600
findtime = 600
maxretry = 5

[sshd]
enabled  = true
port     = ssh
logpath  = %(sshd_log)s
backend  = %(sshd_backend)s
EOF"
    log_success "fail2ban jail.local configured."
  else
    log_warning "jail.local already exists, skipping config."
  fi

  # Enable and start fail2ban
  run_cmd systemctl enable fail2ban
  run_cmd systemctl restart fail2ban
  log_success "fail2ban enabled and started."
}

setup_fail2ban





# ============================================
# SECTION 4: AUTOMATIC SECURITY UPDATES
# ============================================
setup_auto_updates() {
  log_info "Setting up automatic security updates..."

  # Install unattended-upgrades
  if ! dpkg -l | grep -q unattended-upgrades; then
    run_cmd apt-get install -y unattended-upgrades
    log_success "unattended-upgrades installed."
  else
    log_warning "unattended-upgrades already installed, skipping."
  fi

  # Enable it
  run_cmd dpkg-reconfigure -plow unattended-upgrades

  log_success "Automatic security updates enabled."
}

setup_auto_updates



# ============================================
# SECTION 5: DISABLE UNUSED SERVICES
# ============================================
disable_unused_services() {
  log_info "Disabling unused services..."

  SERVICES=("cups" "avahi-daemon" "bluetooth")

  for service in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$service"; then
      run_cmd systemctl stop "$service"
      run_cmd systemctl disable "$service"
      log_success "$service stopped and disabled."
    else
      log_warning "$service is not running, skipping."
    fi
  done
}

disable_unused_services



# ============================================
# FINAL SUMMARY
# ============================================
print_summary() {
  echo ""
  echo -e "${GREEN}========================================${NC}"
  echo -e "${GREEN}   Hardening Complete!${NC}"
  echo -e "${GREEN}========================================${NC}"
  echo -e "${BLUE}What was done:${NC}"
  echo "  [+] SSH hardened (root login & password auth disabled)"
  echo "  [+] UFW firewall configured (SSH, HTTP, HTTPS only)"
  echo "  [+] fail2ban installed and active"
  echo "  [+] Automatic security updates enabled"
  echo "  [+] Unused services disabled"
  echo ""
  echo -e "${YELLOW}IMPORTANT: Make sure you can still SSH in before closing this session!${NC}"
}

print_summary

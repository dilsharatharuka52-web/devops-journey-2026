# Day 3 – Linux Deep Dive: LVM, Users & SSH Hardening 🐧

**📋 Objective:**  
Learn flexible storage management, Linux users, and secure SSH practices.  
This file contains all commands, examples, and explanations in one place.

---

## 🗄️ 1️⃣ LVM Disk Partitions (Deep Dive)

**Logical Volume Manager (LVM)** allows flexible storage management:

### **Architecture:**
```
Disk 
└── Physical Volume (PV) 
    └── Volume Group (VG) 
        └── Logical Volume (LV) 
            └── Filesystem 
                └── Mount Point
```

### **Commands & Steps:**

```bash
# 🔍 Check disks
lsblk

# 🔧 Physical Volume (PV)
pvcreate /dev/sdb1
pvdisplay
pvs

# 🔧 Volume Group (VG)
vgcreate vg00 /dev/sdb1
vgdisplay
vgs

# 🔧 Logical Volume (LV)
lvcreate -L 10G -n sales-lv vg00
lvdisplay
lvs

# 💾 Create filesystem and mount
mkfs.ext4 /dev/vg00/sales-lv
mkdir -p /mnt/data
mount /dev/vg00/sales-lv /mnt/data

# 📌 Auto-mount: add to /etc/fstab
echo "/dev/vg00/sales-lv /mnt/data ext4 defaults 0 2" | sudo tee -a /etc/fstab

# 📸 Snapshot (read-only example)
lvcreate -L 10G -s -n ubuntu-lv-snap /dev/ubuntu-vg/ubuntu-lv
mkdir -p /mnt/root-snap
mount -o ro /dev/ubuntu-vg/ubuntu-lv-snap /mnt/root-snap

# 🗑️ Remove snapshot
umount /mnt/root-snap
lvremove /dev/ubuntu-vg/ubuntu-lv-snap

# 📈 Resize LV (increase)
lvextend -L +1G /dev/ubuntu-vg/sales-lv
resize2fs /dev/ubuntu-vg/sales-lv
```

### 📝 Key Notes:
* 🎯 **LVM** = flexible partitioning, cloud-friendly mindset
* 📸 **Snapshots** = point-in-time copies for safe backups
* 🔄 **Resize without downtime** = production-grade skill

---

## 👥 2️⃣ Linux Users & Permissions

### **Types of Users:**
* **Root:** Full privileges (UID 0)
* **Regular:** Limited privileges, sudo optional
* **System:** For services, no login

### **User Commands:**

```bash
# ➕ Add user
sudo adduser alice

# 🗑️ Delete user
sudo deluser alice
sudo deluser --remove-home alice

# 🔐 Change password
sudo passwd alice

# 👥 Add user to group
sudo usermod -aG sudo alice

# 👀 View user info
whoami
id
who
users
groups <user>

# 📁 File permissions
ls -l /home/tharuka
```

### 📝 Key Notes:
* ⚠️ **Assign groups carefully** for security
* 🛡️ **Every service** should have its own user
* 👥 **Multi-user setup** = DevOps best practice

---

## 🔒 3️⃣ SSH Hardening

**Goals:** Disable root login, force key-based login

### **Commands & Steps:**

```bash
# 📝 Edit SSH config
sudo nano /etc/ssh/sshd_config

# ❌ Disable root login
# Change:
# PermitRootLogin yes
# To:
PermitRootLogin no

# 🔑 Force key-only login
PasswordAuthentication no

# 🔄 Restart SSH service
sudo systemctl restart ssh

# 🔑 SSH key setup (local machine)
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-copy-id user@server-ip
ssh user@server-ip
```

### **Optional Best Practices:**

```bash
# 🔧 Change SSH port
Port 2222

# 👤 Allow only specific users
AllowUsers tharuka admin
```

### 📝 Key Notes:
* 🔑 **Key-based SSH** = safer than passwords
* ❌ **Disable root login** = mandatory for production
* 🤖 Works with **CI/CD pipelines** for automation

---

## 📋 4️⃣ Quick Reference Table

| Task | Command |
|------|---------|
| 🔍 Check disks | `lsblk` |
| 🔧 PV | `pvcreate /dev/sdb1` / `pvdisplay` |
| 🔧 VG | `vgcreate vg00 /dev/sdb1` / `vgdisplay` |
| 🔧 LV | `lvcreate -L 10G -n sales-lv vg00` / `lvdisplay` |
| 💾 Format LV | `mkfs.ext4 /dev/vg00/sales-lv` |
| 📌 Mount | `mkdir /mnt/data` / `mount /dev/vg00/sales-lv /mnt/data` |
| 📸 Snapshot | `lvcreate -L 10G -s -n ubuntu-lv-snap /dev/ubuntu-vg/ubuntu-lv` |
| 🗑️ Remove snapshot | `lvremove /dev/ubuntu-vg/ubuntu-lv-snap` |
| ➕ Add user | `sudo adduser alice` |
| 👥 Add user to group | `sudo usermod -aG sudo alice` |
| ❌ SSH root disable | `PermitRootLogin no` |
| 🔑 Force key login | `PasswordAuthentication no` |

---

## 🚀 5️⃣ Real DevOps Usage Examples

* **LVM snapshots** = backup before upgrades
* **Users & groups** = service isolation (MySQL, Docker, Web servers)
* **SSH hardening** = production-ready servers

---

## 🎯 6️⃣ Summary / Takeaways

| Topic | Key Learning |
|-------|--------------|
| **LVM** → | Flexible storage, snapshots, resize live |
| **Users & Groups** → | Multi-user architecture, proper sudo setup |
| **SSH** → | Key-only login, disable root, optional port change |

---

## 🔗 Navigation

← [Day 2: Home Lab Architecture](../day-02/README.md) | [Back to Main](../../README.md) | [Day 4: Networking Basics](../day-04/README.md) →

---

> **Status:** ✅ Completed  
> **Date:** January 16, 2026  
> **Time Invested:** 3 hours (1hr theory + 2hrs hands-on)

---

*Part of my DevOps → AI Platform Engineer journey. Building in public, one day at a time 🚀*

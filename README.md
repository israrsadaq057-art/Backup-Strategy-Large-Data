# Backup Strategy for Large Data (3D Assets)

## Author

**Israr Sadaq**
- IT and Network Administrator | CCNA | CCNP 
- Email: israrsadaq057@gmail.com
- GitHub: github.com/israrsadaq057-art

---

## Project Overview

Enterprise-grade backup solution for large 3D assets using **BorgBackup** with deduplication, compression, encryption, and automated scheduling.

This project demonstrates a production-ready backup system suitable for:
- 3D animation studios
- Game development companies
- VFX and rendering farms
- Any creative agency with large file assets

---


---

## Technologies Used

| Technology | Purpose |
|------------|---------|
| **BorgBackup** | Deduplicating backup software with compression and encryption |
| **Cron** | Automated task scheduling |
| **Bash** | Scripting for automation |
| **WSL / Ubuntu** | Development and testing environment |

---

## Metrics Achieved

| Metric | Value |
|--------|-------|
| Original data size | 209.72 MB |
| After compression | 823.80 KB |
| After deduplication | 50.37 KB |
| **Total space saved** | **99.98%** |
| Backup window | ~2 seconds |
| Restore time | < 1 second |

### Why This Matters

For a 3D studio with 10 TB of production data:
- Without Borg: 10 TB storage needed
- With Borg: ~2 GB storage needed (99.98% reduction)
- 10 TB of backups cost: ~$500/month on cloud
- 2 GB of backups cost: ~$0.10/month on cloud

---

## Key Features

| Feature | Description |
|---------|-------------|
| **Deduplication** | Only stores unique data blocks. If you have 100 copies of the same file, it stores it once. |
| **Compression** | LZ4 compression reduces file size before storage |
| **Encryption** | AES-256 encryption ensures data security |
| **Versioning** | Keep multiple backup versions (7 daily, 4 weekly, 6 monthly) |
| **Automation** | Daily scheduled backups via cron |
| **Integrity checking** | Automatic verification of backup integrity |
| **Append-only mode** | Prevents deletion of old backups (ransomware protection) |

---

## Installation

### Prerequisites

- Linux / WSL (Windows Subsystem for Linux)
- BorgBackup

### Install BorgBackup

```bash
sudo apt update
sudo apt install borgbackup -y

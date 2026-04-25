# Cron & Task Scheduling

Cron is a Linux service used to schedule recurring tasks such as backups, monitoring scripts, or maintenance jobs.

---

## 📅 Editing Crontab

```bash
crontab -e
```

---

## 🧠 Crontab Purpose

- Stores scheduled commands  
- Runs tasks at specific times  
- Supports user‑level automation  

---

## 🛡️ Security Relevance

Cron is commonly abused for persistence.

Analysts check:

- Suspicious cron entries  
- Unexpected scripts running on intervals  
- Rogue user crontabs  

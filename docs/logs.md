# System Logs & /var/log

Linux stores logs in `/var/log`, which contain critical information about system activity, services, and user actions.

---

## 📁 Key Log Files

### Apache2
- `access.log` — all requests  
- `error.log` — service issues  

### fail2ban
- Brute‑force detection  
- Blocked IPs  

### UFW Firewall
- Allowed/denied connections  

### Authentication Logs
- Login attempts  
- Failed logins  
- Privilege escalations  

---

## 🛡️ Security Relevance

Logs support:

- Incident response  
- Forensics  
- Threat hunting  
- System health monitoring  

They are essential for reconstructing attacker behaviour.

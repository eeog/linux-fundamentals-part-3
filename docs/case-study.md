# Linux System Investigation Case Study  
*Linux Fundamentals Part 3 — Evidence Analysis*

This case study documents a simulated investigation performed on a Linux host as part of my *Linux Fundamentals Part 3* training.  
The objective was to analyse system activity, inspect running processes, review service behaviour, and examine authentication logs to identify potential security‑relevant events.

All referenced evidence is included in the `evidence/` directory of this repository.

---

# 📌 1. Initial System Enumeration

The investigation script (`scripts/example-script.sh`) collected baseline system information, including:

- Current user  
- Hostname  
- Date/time  
- Running processes  
- Active services  
- Authentication logs  

This information is logged in:

```
evidence/system-check.log
```

### 🔍 Key Observations

- The system was accessed as the `root` user.  
- Hostname: `ubuntu`  
- System time aligned with expected activity windows.  

No anomalies were observed at this stage.

---

# 🧵 2. Process Analysis

The process list was captured using:

```bash
ps aux
```

Stored in:

```
evidence/process-list.txt
```

### 🔍 Notable Findings

- `apache2` was running with multiple worker processes under `www-data`.  
- `sshd` was active and listening on port 22.  
- No suspicious processes (e.g., unknown binaries, high CPU usage, obfuscated names).  
- A background task (`sleep 5`) was intentionally created by the script for demonstration.  

### 🛡️ Assessment  
All processes appeared legitimate and consistent with a lightly used Ubuntu server.

---

# ⚙️ 3. Service Enumeration

Active services were captured using:

```bash
systemctl list-units --type=service --state=running
```

Stored in:

```
evidence/active-services.txt
```

### 🔍 Key Services Observed

- `apache2.service` — Web server  
- `ssh.service` — Secure Shell  
- `cron.service` — Scheduled tasks  
- `ufw.service` — Firewall  
- `fail2ban.service` — Brute‑force protection  

### 🛡️ Assessment  
All running services were expected for a typical Linux host.  
No unauthorised or suspicious services were identified.

---

# 🔐 4. Authentication Log Review

Authentication logs were copied from:

```
/var/log/auth.log
```

Stored in:

```
evidence/auth.log
```

### 🔍 Key Events Identified

- Successful SSH login from IP `192.168.1.50` by user `analyst`.  
- A `sudo` command executed to check Apache service status.  
- Normal CRON activity for the root user.  
- No failed login attempts.  
- No brute‑force indicators.  
- No unexpected privilege escalation attempts.  

### 🛡️ Assessment  
Authentication activity appeared legitimate and consistent with administrative access.

---

# 🌓 5. Background Task Demonstration

The script intentionally created a background process:

```bash
sleep 5 &
```

This was logged with a PID in:

```
evidence/system-check.log
```

### 🧠 Purpose  
This demonstrates:

- Backgrounding processes  
- Tracking PIDs  
- Logging process activity  

This technique is commonly used during investigations to avoid blocking the terminal while collecting evidence.

---

# 🧩 6. Overall Security Assessment

Based on the evidence collected:

- No malicious processes were detected  
- No suspicious services were running  
- Authentication logs showed normal administrative activity  
- No indicators of compromise (IoCs) were present  
- System behaviour aligned with expected baseline activity  

### 🛡️ Conclusion  
The system appeared to be in a healthy state with **no signs of intrusion or malicious activity**.  
This investigation demonstrates the ability to collect, analyse, and interpret Linux system evidence in a structured, SOC‑aligned workflow.

---

# 🧠 7. Skills Demonstrated

This case study highlights practical experience with:

- Linux process analysis  
- Service enumeration  
- Log review and interpretation  
- Evidence collection and preservation  
- Backgrounding and foregrounding processes  
- Bash scripting for automation  
- Secure investigation workflows  

These are core competencies for SOC analysts, incident responders, and cybersecurity professionals.


# Linux Fundamentals Part 3 — Investigation Project

This project documents my hands‑on work from TryHackMe’s *Linux Fundamentals Part 3* room.  
It focuses on practical Linux skills used in security operations, system administration, and endpoint investigations.

The goal of this project is to demonstrate my ability to work confidently on a Linux system, investigate processes, manage services, analyse logs, transfer files securely, and understand how Linux behaves under the hood — all essential skills for SOC and cyber security roles.

---

# 📌 Project Overview

This investigation covers:

- Terminal text editing (Nano)
- Downloading files (wget)
- Secure file transfer (scp)
- Hosting files with Python HTTP server
- Process monitoring & management
- systemd & service control (systemctl)
- Backgrounding & foregrounding processes
- Task scheduling with cron
- Package management & repositories (apt)
- System logs & /var/log

Each section includes high‑level explanations, practical examples, and security relevance.

---

# 📝 1. Working With Terminal Text Editors (Nano)

I used the `nano` editor to create and modify multi‑line files directly from the terminal.

**Command used:**
```bash
nano filename
```

**Skills demonstrated:**
- Editing configuration files  
- Searching within files (`Ctrl + W`)  
- Saving changes (`Ctrl + O`)  
- Exiting safely (`Ctrl + X`)  
- Cutting/pasting text (`Ctrl + K` / `Ctrl + U`)  

**Security relevance:**  
Analysts often need to quickly review or edit scripts, logs, or config files during investigations.

---

# 🌐 2. Downloading Files With `wget`

`wget` allows downloading files directly from the command line.

**Example:**
```bash
wget https://example.com/file.txt
```

**Use cases:**
- Pulling logs or evidence  
- Downloading scripts/tools  
- Retrieving remote resources without a browser  

---

# 🔐 3. Secure File Transfer With `scp`

`scp` transfers files securely between systems using SSH.

**Examples:**
```bash
scp user@remote:/path/to/file.txt .
scp file.txt user@remote:/tmp/
```

**Security relevance:**
- Secure evidence collection  
- Moving tools to remote hosts  
- Encrypted transfer over SSH  

---

# 🕸️ 4. Serving Files With Python HTTP Server

Python3 includes a lightweight web server for quick file sharing.

**Command used:**
```bash
python3 -m http.server 8000
```

**Use cases:**
- Sharing scripts/logs  
- Transferring files in isolated environments  
- Hosting temporary resources  

---

# 🧵 5. Processes & Process Management

### Viewing processes:
```bash
ps
ps aux
top
```

### Managing processes:
```bash
kill <PID>
```

**Signals:**
- `SIGTERM` — graceful stop  
- `SIGKILL` — force kill  
- `SIGSTOP` — suspend  

**Security relevance:**
- Detecting suspicious processes  
- Investigating resource spikes  
- Stopping malicious activity  

---

# ⚙️ 6. systemd & Service Control (`systemctl`)

systemd (PID 1) manages system services.

**Commands used:**
```bash
systemctl start apache2
systemctl stop apache2
systemctl enable apache2
systemctl disable apache2
systemctl status apache2
```

**Security relevance:**
- Attackers often modify services for persistence  
- Analysts must verify service integrity  
- systemd logs help trace activity  

---

# 🌓 7. Backgrounding & Foregrounding Processes

### Run a command in the background:
```bash
command &
```

### Suspend a process:
```bash
Ctrl + Z
```

### Bring it back:
```bash
fg
```

**Why this matters:**
- Managing long‑running scripts  
- Pausing suspicious processes  
- Maintaining terminal control during investigations  

---

# ⏰ 8. Scheduling Tasks With Cron & Crontabs

Cron automates tasks such as backups, monitoring, or script execution.

**Crontab purpose:**
- Stores scheduled jobs  
- Runs tasks at defined intervals  
- Supports user‑specific automation  

**Security relevance:**
- Attackers often create cron jobs for persistence  
- Reviewing crontabs is part of endpoint investigation  

---

# 📦 9. Package Management & Repositories (apt)

I learned how to manage software using apt, including adding trusted repositories.

### Adding a GPG key:
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```

### Adding a repository:
- Create a `.list` file in `/etc/apt/sources.list.d/`
- Add repository entry using nano

### Update & install:
```bash
sudo apt update
sudo apt install sublime-text
```

### Removing software:
```bash
sudo apt remove <package>
```

**Security relevance:**
- Rogue repositories = persistence technique  
- GPG keys verify software integrity  
- Analysts must inspect installed packages  

---

# 📚 10. System Logs & /var/log

Linux stores logs in `/var/log`, including:

- Apache2 logs (access & error)  
- fail2ban logs (brute‑force detection)  
- UFW firewall logs  
- Authentication logs  
- System event logs  

**Why logs matter:**
- Incident response  
- Forensics  
- Threat hunting  
- Monitoring system health  

---

# 📂 Repository Structure

```bash
linux-fundamentals-part3/
│
├── README.md
│
├── docs/
│   ├── nano-notes.md
│   ├── wget-notes.md
│   ├── scp-notes.md
│   ├── python-http-server.md
│   ├── processes.md
│   ├── systemctl.md
│   ├── cron.md
│   ├── apt-repos.md
│   └── logs.md
│
├── scripts/
│   └── example-script.sh
│
└── evidence/
    └── .gitkeep
```

---

# ✔️ Summary

This project demonstrates practical Linux skills directly relevant to:

- SOC analyst workflows  
- Incident response  
- Endpoint investigation  
- System administration  
- Threat hunting  

It forms the final part of my linux fundementals project

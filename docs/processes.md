# Processes & Process Management

Processes represent running programs on a Linux system. Understanding how to view, manage, and investigate them is essential for security operations.

---

## 📊 Viewing Processes

```bash
ps
ps aux
top
```

- `ps` — processes in current session  
- `ps aux` — all system processes  
- `top` — real‑time process monitoring  

---

## 🛑 Killing Processes

```bash
kill <PID>
```

### Signals:
- `SIGTERM` — graceful stop  
- `SIGKILL` — force kill  
- `SIGSTOP` — suspend  

---

## 🧬 How Processes Start

- Linux uses **namespaces** to isolate resources  
- `systemd` (PID 1) is the parent of most processes  
- Child processes inherit resources from systemd  

---

## 🛡️ Security Relevance

Process analysis helps identify:

- Malware  
- Persistence mechanisms  
- Resource abuse  
- Suspicious background activity  

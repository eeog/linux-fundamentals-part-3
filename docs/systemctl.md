# Managing Services With systemctl

`systemctl` is the interface for controlling systemd services. It is used to start, stop, enable, disable, and inspect system services.

---

## ▶️ Start a Service

```bash
systemctl start apache2
```

## ⏹️ Stop a Service

```bash
systemctl stop apache2
```

## 🔄 Enable at Boot

```bash
systemctl enable apache2
```

## 🚫 Disable at Boot

```bash
systemctl disable apache2
```

## 📋 Check Status

```bash
systemctl status apache2
```

---

## 🛡️ Security Relevance

Attackers often:

- Modify services  
- Disable security tools  
- Create malicious services for persistence  

Analysts must understand how to inspect and control system services.

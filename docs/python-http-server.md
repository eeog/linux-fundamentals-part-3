# Python HTTP Server — Quick File Hosting

Python3 includes a built‑in HTTP server module that allows you to quickly host files over HTTP. This is useful for transferring files between machines in controlled environments.

---

## 🚀 Start a Web Server

```bash
python3 -m http.server 8000
```

This serves the current directory on port **8000**.

---

## 📥 Downloading From Another Machine

Use `wget` or `curl`:

```bash
wget http://<ip>:8000/file.txt
```

---

## 🛡️ Security Relevance

Useful for:

- Transferring logs or scripts  
- Sharing tools during incident response  
- Moving files in isolated networks  
- Hosting temporary resources  

It’s a fast, dependency‑free method for file sharing.

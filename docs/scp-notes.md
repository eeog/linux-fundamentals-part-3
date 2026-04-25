# Secure File Transfer With scp

`scp` (Secure Copy) allows encrypted file transfers between systems using SSH. It is essential for securely moving evidence, logs, and tools during investigations.

---

## 📤 Copy From Local → Remote

```bash
scp file.txt user@remote:/path/
```

---

## 📥 Copy From Remote → Local

```bash
scp user@remote:/path/to/file.txt .
```

---

## 📁 Copy Directories

```bash
scp -r folder/ user@remote:/path/
```

---

## 🛡️ Security Relevance

`scp` ensures:

- Encrypted transfer  
- Authentication via SSH  
- Integrity of transferred data  

SOC analysts use it to:

- Pull evidence from compromised hosts  
- Transfer scripts/tools to remote machines  
- Move logs for offline analysis  

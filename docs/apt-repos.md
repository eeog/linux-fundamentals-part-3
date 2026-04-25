# Package Management & Repositories (apt)

Ubuntu uses the `apt` package manager to install, update, and remove software. Repositories define where software comes from.

---

## 🔑 Adding a GPG Key

```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```

---

## ➕ Adding a Repository

Create a file in:

```
/etc/apt/sources.list.d/
```

Add repository entry using Nano.

---

## 🔄 Update & Install

```bash
sudo apt update
sudo apt install sublime-text
```

---

## ➖ Removing Software

```bash
sudo apt remove <package>
```

---

## 🛡️ Security Relevance

- Rogue repositories = persistence  
- GPG keys verify authenticity  
- Analysts must inspect installed packages  

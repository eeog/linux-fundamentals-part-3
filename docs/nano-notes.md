# Nano — Terminal Text Editing

This document covers my notes and practical usage of the `nano` terminal text editor during Linux Fundamentals Part 3.

Nano is a lightweight, user‑friendly editor used to create and modify files directly from the terminal. It is commonly found on most Linux distributions and is ideal for quick edits, configuration changes, and note‑taking during investigations.

---

## 🔧 Opening or Creating a File

```bash
nano filename
```

If the file does not exist, Nano creates it automatically.

---

## ✏️ Core Editing Skills

- **Move cursor:** Arrow keys  
- **New line:** Enter  
- **Delete character:** Backspace  

---

## 💾 Saving & Exiting

- **Save changes:** `Ctrl + O`  
- **Exit Nano:** `Ctrl + X`  
- **Save & exit quickly:** `Ctrl + X` → `Y` → Enter  

---

## 🔍 Searching & Navigation

- **Search for text:** `Ctrl + W`  
- **Go to line number:** `Ctrl + _`  

---

## 📋 Copying & Pasting

- **Cut line:** `Ctrl + K`  
- **Paste line:** `Ctrl + U`  
- **Mark text:** `Ctrl + ^`  

---

## 🛡️ Security Relevance

Nano is essential for:

- Editing configuration files during investigations  
- Reviewing suspicious scripts  
- Documenting findings directly on a Linux host  
- Making quick changes to system files  

It’s a core skill for SOC analysts working on Linux endpoints.

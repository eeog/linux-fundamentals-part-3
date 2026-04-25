#!/bin/bash
# ---------------------------------------------------------
# Example Investigation Script
# Linux Fundamentals Part 3 — Portfolio Demonstration
# ---------------------------------------------------------
# This script performs basic system enumeration, collects
# evidence, and demonstrates backgrounding, logging, and
# process handling techniques used in SOC investigations.
# ---------------------------------------------------------

EVIDENCE_DIR="evidence"
LOG_FILE="$EVIDENCE_DIR/system-check.log"

# Create evidence directory if missing
mkdir -p "$EVIDENCE_DIR"

echo "[*] Starting system investigation script..."
echo "---------------------------------------------" | tee "$LOG_FILE"

# ---------------------------------------------------------
# 1. Record current user and system info
# ---------------------------------------------------------
echo "[*] Collecting system information..." | tee -a "$LOG_FILE"

echo "User: $(whoami)" | tee -a "$LOG_FILE"
echo "Hostname: $(hostname)" | tee -a "$LOG_FILE"
echo "Date: $(date)" | tee -a "$LOG_FILE"

# ---------------------------------------------------------
# 2. List running processes
# ---------------------------------------------------------
echo -e "\n[*] Capturing running processes..." | tee -a "$LOG_FILE"
ps aux > "$EVIDENCE_DIR/process-list.txt"
echo "[+] Process list saved to evidence/process-list.txt" | tee -a "$LOG_FILE"

# ---------------------------------------------------------
# 3. Check active services (systemctl)
# ---------------------------------------------------------
echo -e "\n[*] Checking active services..." | tee -a "$LOG_FILE"
systemctl list-units --type=service --state=running > "$EVIDENCE_DIR/active-services.txt"
echo "[+] Active services saved to evidence/active-services.txt" | tee -a "$LOG_FILE"

# ---------------------------------------------------------
# 4. Demonstrate backgrounding a task
# ---------------------------------------------------------
echo -e "\n[*] Demonstrating background task..." | tee -a "$LOG_FILE"

sleep 5 &
BG_PID=$!

echo "[+] Background task started with PID: $BG_PID" | tee -a "$LOG_FILE"

# ---------------------------------------------------------
# 5. Log file extraction (/var/log)
# ---------------------------------------------------------
echo -e "\n[*] Collecting authentication logs..." | tee -a "$LOG_FILE"

if [ -f /var/log/auth.log ]; then
    cp /var/log/auth.log "$EVIDENCE_DIR/auth.log"
    echo "[+] Authentication log copied to evidence/auth.log" | tee -a "$LOG_FILE"
else
    echo "[!] auth.log not found on this system." | tee -a "$LOG_FILE"
fi

# ---------------------------------------------------------
# 6. Completion
# ---------------------------------------------------------
echo -e "\n[*] Investigation script completed." | tee -a "$LOG_FILE"
echo "---------------------------------------------" | tee -a "$LOG_FILE"

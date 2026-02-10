#!/bin/bash

# Root-Verzeichnis des Source-Trees finden
TOP=$(pwd)

echo "=== Wende Patches für Xiaomi Apollo an ==="

# 1. BPF Loader Check Patch (Kernel 4.19 Bypass)
echo "Patching NetBpfLoad..."
cd $TOP/packages/modules/Connectivity
# Prüfen, ob der Patch schon angewendet wurde, um Fehler zu vermeiden
git apply --check $TOP/device/xiaomi/apollo/patches/bypass_bpf_check.patch 2>/dev/null
if [ $? -eq 0 ]; then
    git apply $TOP/device/xiaomi/apollo/patches/bypass_bpf_check.patch
    echo " -> Erfolg!"
else
    echo " -> Patch scheint schon angewendet zu sein oder passt nicht mehr."
fi

# Zurück zum Start
cd $TOP
echo "=== Patchen abgeschlossen ==="
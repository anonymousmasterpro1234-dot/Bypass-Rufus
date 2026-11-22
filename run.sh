#!/bin/bash
echo "[+] Aplicando bypass de licencia..."
mv /usr/bin/install-LIC /usr/bin/install-LIC.bak 2>/dev/null
cp install-LIC /usr/bin/install-LIC
chmod +x /usr/bin/install-LIC
echo "[+] Iniciando instalador de Rufu..."
chmod +x install.sh
bash install.sh

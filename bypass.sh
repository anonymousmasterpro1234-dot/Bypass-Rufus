#!/bin/bash
RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'
echo -e "${CYAN}  ADMRufu Network — Instalador Libre  ${NC}"
if [[ $EUID -ne 0 ]]; then echo -e "${RED}Ejecuta como root${NC}"; exit 1; fi

PAYLOAD_URL="https://github.com/anonymousmasterpro1234-dot/Bypass-Rufus/raw/main/rufu-bypass.tar.gz"
WORK_DIR="/usr/local/rufu-src"

echo -e "${CYAN}[1/2] Descargando...${NC}"
rm -rf "$WORK_DIR" && mkdir -p "$WORK_DIR"
curl -fsSL --max-time 300 "$PAYLOAD_URL" -o /tmp/rufu-bypass.tar.gz || { echo -e "${RED}Error descargando${NC}"; exit 1; }
tar -xzf /tmp/rufu-bypass.tar.gz -C "$WORK_DIR"
rm -f /tmp/rufu-bypass.tar.gz

echo -e "${CYAN}[2/2] Instalando...${NC}"
cd "$WORK_DIR" && bash run.sh

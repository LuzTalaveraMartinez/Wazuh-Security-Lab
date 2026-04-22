#!/bin/bash
# Wazuh Security Lab - Instalador Automático
set -e

echo "Preparando el sistema..."
sudo apt update && sudo apt install -y curl

echo "Descargando e Instalando Wazuh All-in-One..."
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh
sudo bash wazuh-install.sh -a --ignore-memory-check

echo "--- INSTALACIÓN COMPLETADA ---"
echo "Acceso: https://localhost:4443"
echo "Contraseñas: sudo cat /var/ossec/etc/wazuh-passwords.txt"

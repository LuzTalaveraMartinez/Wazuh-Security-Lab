#!/bin/bash
# Script de monitoreo para Wazuh SIEM
# Autora: Luz María Talavera Martínez

echo "=========================================="
echo "   ESTADO DE SERVICIOS - LABORATORIO WAZUH"
echo "=========================================="

services=("wazuh-indexer" "wazuh-manager" "wazuh-dashboard" "filebeat")

for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo -e "[✅] $service: FUNCIONANDO"
    else
        echo -e "[❌] $service: DETENIDO"
    fi
done
echo "=========================================="

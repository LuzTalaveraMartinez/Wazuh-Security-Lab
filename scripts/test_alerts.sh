#!/bin/bash
# Generador de eventos de seguridad para pruebas
# Autora: Luz María Talavera Martínez

echo "Generando eventos de seguridad para el Dashboard..."

# 1. Alerta de nivel bajo: Mensaje en el log
sudo logger "WAZUH_TEST: Inicio de escaneo de auditoría manual."

# 2. Alerta de nivel medio: Intento de acceso a directorio restringido
echo "Probando detección de acceso a /root..."
sudo ls /root > /dev/null 2>&1

# 3. Alerta de autenticación: Fallos de sudo
echo "Generando intentos de login fallidos (presiona ENTER 3 veces)..."
sudo -k
for i in {1..3}; do
    sudo ls > /dev/null 2>&1
done

echo "¡Pruebas completadas! Revisa el apartado 'Security Events' en tu Dashboard."

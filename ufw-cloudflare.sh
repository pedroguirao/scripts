#!/bin/dash

echo "Creando reglas para ssh"
sudo ufw allow 22022
echo "Creando reglas para cloudflare"
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 173.245.48.0/20
sudo ufw allow from 103.21.244.0/22
sudo ufw allow from 103.22.200.0/22
sudo ufw allow from 103.31.4.0/22
sudo ufw allow from 141.101.64.0/18
sudo ufw allow from 108.162.192.0/18
sudo ufw allow from 190.93.240.0/20
sudo ufw allow from 197.234.240.0/22
sudo ufw allow from 198.41.128.0/17
sudo ufw allow from 162.158.0.0/15
sudo ufw allow from 104.16.0.0/12
sudo ufw allow from 172.64.0.0/13
sudo ufw allow from 131.0.72.0/22
sudo ufw allow from 2400:cb00::/32
sudo ufw allow from 2606:4700::/32
sudo ufw allow from 2405:b500::/32
sudo ufw allow from 2405:8100::/32
sudo ufw allow from 2a06:98c0::/29
sudo ufw allow from 2c0f:f248::/32
echo "Activando Ufw"
sudo ufw enable
sudo ufw status


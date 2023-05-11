#!/bin/bash
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
curl -o webmin.sh https://raw.githubusercontent.com/egySTARx/meemscripts/main/webmin.sh
sh webmin.sh
apt install webmin -y
#curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
hostnamectl set-hostname MeeMVPN
curl -s https://install.zerotier.com | sudo bash
apt install net-tools -y
apt install iptables -y


#!/bin/bash
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
curl -o webmin.sh https://raw.githubusercontent.com/egySTARx/meemscripts/main/webmin.sh
sh webmin.sh
apt install webmin -y
sudo apt -y install open-vm-tools
hostnamectl set-hostname localhost
apt install -y net-tools iptables
curl -s https://install.zerotier.com | sudo bash
#curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v

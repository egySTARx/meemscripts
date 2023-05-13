#!/bin/bash
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
curl -o webmin.sh https://raw.githubusercontent.com/egySTARx/meemscripts/main/webmin.sh
sh webmin.sh
apt install webmin -y
hostnamectl set-hostname localhost

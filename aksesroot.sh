#!/bin/bash
# xixi
# echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -q -O /etc/ssh/sshd_config https://github.com/rasi1982/sc-vvip/raw/refs/heads/main/sshd_config.txt;
systemctl restart sshd;
clear;
echo -e "Masukkan Password:";
read -e pwe;
usermod -p "$(perl -e "print crypt('$pwe', 'Q4')")" root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Akun Root (Akun Utama)
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================
"
echo "";
exit;

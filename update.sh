#!/bin/bash
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {

    wget -qO- fv-tunnel "https://github.com/rasi1982/sc-vvip/raw/refs/heads/main/config/fv-tunnel" 
    chmod +x fv-tunnel 
    bash fv-tunnel
    rm -rf fv-tunnel
    cd /usr/local/sbin
    rm -rf menu
    rm -rf m-sshws
    rm -rf addssh
    rm -rf addtr
    rm -rf addss
    rm -rf menu-backup
    rm -rf backup
    rm -rf kontol
    rm -rf regis
    rm -rf addhost
    rm -rf add-bot-notif
    rm -rf addvless
    rm -rf addws
    rm -rf autokill
    rm -rf m-bot
    rm -rf m-noob
    rm -rf m-ssws
    rm -rf m-trial
    rm -rf m-trojan
    rm -rf m-vless
    rm -rf m-vmess
    rm -rf mbot-backup
    rm -rf mbot-panel
    rm -rf menu-backup
    rm -rf menu-x
    rm -rf autoreboot
    rm -rf bot
    rm -rf bw
    rm -rf ceklim
    rm -rf cekss
    rm -rf cekssh
    rm -rf cektr
    rm -rf cekvless
    rm -rf cekws
    rm -rf clearcache
    rm -rf clearlog
    rm -rf del-bot-notif
    rm -rf delexp
    rm -rf delss
    rm -rf delssh
    rm -rf deltr
    rm -rf delvless
    rm -rf delws
    rm -rf fixcert
    rm -rf hapus-bot
    rm -rf limit-ip-ssh
    rm -rf limitspeed
    rm -rf lock
    rm -rf m-sshws
    rm -rf member
    rm -rf member-ws
    rm -rf prot
    rm -rf renewss
    rm -rf renewssh
    rm -rf renewtr
    rm -rf renewvless
    rm -rf renewws
    rm -rf reset
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/menu
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-sshws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addssh
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addtr
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addss
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu-backup
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/backup
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/regis
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addhost
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/add-bot-notif
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addvless
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/addws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/autokill
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-bot
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-noob
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-ssws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-trial
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-trojan
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-vless
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-vmess
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/mbot-backup
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/mbot-panel
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/menu-backup
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/menu-x
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/autoreboot
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/bot
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/bw
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/ceklim
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/cekss
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/cekssh
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/cektr
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/cekvless
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/cekws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/clearcache
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/clearlog
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/del-bot-notif
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/delexp
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/delss
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/delssh
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/deltr
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/delvless
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/delws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/fixcert
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/hapus-bot
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/limit-ip-ssh
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/limitspeed
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/lock
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/m-sshws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/member
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/member-ws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/prot
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/renewss
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/renewssh
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/renewtr
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/renewvless
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/renewws
    wget https://raw.githubusercontent.com/rasi1982/sc-vvip/refs/heads/main/menu/reset

    
    chmod +x menu
    chmod +x m-sshws
    chmod +x addssh
    chmod +x addtr
    chmod +x addss
    chmod +x menu-backup
    chmod +x backup
    chmod +x regis
    chmod +x addhost
    chmod +x add-bot-notif
    chmod +x addvless
    chmod +x addws
    chmod +x autokill
    chmod +x m-bot
    chmod +x m-noob
    chmod +x m-ssws
    chmod +x m-trial
    chmod +x m-trojan
    chmod +x m-vless
    chmod +x m-vmess
    chmod +x mbot-backup
    chmod +x mbot-panel
    chmod +x menu-backup
    chmod +x menu-x
    chmod +x autoreboot
    chmod +x bot
    chmod +x bw
    chmod +x ceklim
    chmod +x cekss
    chmod +x cekssh
    chmod +x cektr
    chmod +x cekvless
    chmod +x cekws
    chmod +x clearcache
    chmod +x clearlog
    chmod +x del-bot-notif
    chmod +x delexp
    chmod +x delss
    chmod +x delssh
    chmod +x deltr
    chmod +x delvless
    chmod +x delws
    chmod +x fixcert
    chmod +x hapus-bot
    chmod +x limit-ip-ssh
    chmod +x limitspeed
    chmod +x lock
    chmod +x m-sshws
    chmod +x member
    chmod +x member-ws
    chmod +x prot
    chmod +x renewss
    chmod +x renewssh
    chmod +x renewtr
    chmod +x renewvless
    chmod +x renewws
    chmod +x reset
   
}
function noobzvpn() {
wget "${REPO}/noobzvpns.zip"
unzip noobzvpns.zip
cd noobzvpns
bash install.sh
cd
rm noobzvpns.zip
systemctl restart noobzvpns
print_success "NOOBZVPN"
}
netfilter-persistent
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e " \e[1;97;101m UPDATE SCRIPT SEDANG BERJALAN !             \e[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
echo -e "  \033[1;91m Update Script Service\033[1;37m"
fun_bar 'res1'
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu

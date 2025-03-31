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
    wget https://github.com/rasi1982/sc-vvip/raw/refs/heads/main/menu/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu.zip
    rm -rf update.sh
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

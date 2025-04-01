#!/bin/bash
clear

# Fungsi progress bar
fun_bar() {
    CMD="$1"
    (
        rm -f /tmp/fim
        eval "$CMD" >/dev/null 2>&1
        touch /tmp/fim
    ) &

    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while [[ ! -e /tmp/fim ]]; do
        for ((i=0; i<18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1
        done
        echo -ne "\033[0;33m]\r"
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK!\033[1;37m"
    rm -f /tmp/fim
    tput cnorm
}

# Fungsi update dan instalasi
update_script() {
    echo -e "\n\033[1;36mDownloading update...\033[0m"
    wget -qO /tmp/update.sh "https://github.com/rasi1982/sc-vvip/raw/refs/heads/main/update.sh"

    if [[ -f /tmp/update.sh ]]; then
        chmod +x /tmp/update.sh
        echo -e "\n\033[1;32mRunning update script...\033[0m"
        bash /tmp/update.sh
        rm -f /tmp/update.sh
        echo -e "\n\033[1;32mUpdate selesai! Skrip akan keluar secara otomatis.\033[0m"
        sleep 3
        exit
    else
        echo -e "\n\033[1;31mUpdate gagal! File update.sh tidak ditemukan.\033[0m"
        exit 1
    fi
}

# Menjalankan update
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e " \e[1;97;101m UPDATE SCRIPT SEDANG BERJALAN! \e[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
fun_bar "update_script"

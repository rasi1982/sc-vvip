#!/bin/bash
clear

# Fungsi progress bar
fun_bar() {
    CMD="$1"
    (
        [[ -e /tmp/fim ]] && rm /tmp/fim
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
    rm -rf /tmp/fim
    tput cnorm
}

# Fungsi update dan instalasi
update_script() {
    # Download dan jalankan script utama
    wget -qO- "https://github.com/rasi1982/sc-vvip/raw/refs/heads/main/config/fv-tunnel" | bash

    )

    # Download semua file dan ubah izin eksekusi
    for file in "${FILES[@]}"; do
        wget -q -N "$REPO/$file" -O "/usr/local/sbin/$file"
        chmod +x "/usr/local/sbin/$file"
    done
}

# Fungsi instalasi NOOBZVPN
install_noobzvpn() {
    wget -q "${REPO}/noobzvpns.zip"
    unzip -q noobzvpns.zip
    cd noobzvpns
    bash install.sh
    cd
    rm -rf noobzvpns.zip noobzvpns update.sh
    systemctl restart noobzvpns
    echo -e "\n\033[1;32mNOOBZVPN Installed Successfully!\033[0m"
}

# Menjalankan update
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e " \e[1;97;101m UPDATE SCRIPT SEDANG BERJALAN! \e[0m"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
fun_bar "update_script"

# Bersihkan file update
rm -f /root/update.sh

# Tampilkan pesan sukses dan tutup terminal
echo -e "\n\033[1;32mUpdate selesai! Skrip akan keluar secara otomatis.\033[0m"
sleep 3
exit

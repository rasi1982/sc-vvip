#!/bin/bash

echo "=== [1/5] Update dan install HAProxy ==="
sudo apt update && sudo apt install -y haproxy openssl

echo "=== [2/5] Buat SSL hap.pem self-signed ==="
sudo openssl req -new -x509 -days 365 -nodes \
  -subj "/C=ID/ST=Jakarta/L=Jakarta/O=Hokage/CN=localhost" \
  -out /etc/haproxy/hap.pem \
  -keyout /etc/haproxy/hap.pem
sudo chmod 600 /etc/haproxy/hap.pem
sudo chown root:root /etc/haproxy/hap.pem

echo "=== [3/5] Buat file konfigurasi HAProxy ==="
sudo tee /etc/haproxy/haproxy.cfg > /dev/null <<EOF
global
    log /dev/log local0
    log /dev/log local1 notice
    chroot /var/lib/haproxy
    stats socket /run/haproxy/admin.sock mode 660 level admin
    stats timeout 30s
    user haproxy
    group haproxy
    daemon

defaults
    log     global
    mode    http
    option  httplog
    option  dontlognull
    timeout connect 5000
    timeout client  50000
    timeout server  50000
    errorfile 400 /etc/haproxy/errors/400.http
    errorfile 403 /etc/haproxy/errors/403.http
    errorfile 408 /etc/haproxy/errors/408.http
    errorfile 500 /etc/haproxy/errors/500.http
    errorfile 502 /etc/haproxy/errors/502.http
    errorfile 503 /etc/haproxy/errors/503.http
    errorfile 504 /etc/haproxy/errors/504.http

frontend http_in
    bind *:80
    bind *:443 ssl crt /etc/haproxy/hap.pem
    default_backend servers

backend servers
    server web1 127.0.0.1:8080 check
EOF

echo "=== [4/5] Enable dan Start HAProxy ==="
sudo systemctl enable haproxy
sudo systemctl restart haproxy

echo "=== [5/5] Cek Status HAProxy ==="
sudo systemctl status haproxy --no-pager

#!/bin/bash

echo "{" > /etc/shadowsocks.json
echo "\"server\":\"0.0.0.0\"," >> /etc/shadowsocks.json
echo "\"server_port\":443," >> /etc/shadowsocks.json
echo "\"local_address\": \"localhost\"," >> /etc/shadowsocks.json
echo "\"local_port\":1080," >> /etc/shadowsocks.json
echo "\"password\":\"HT_VPN_$\"," >> /etc/shadowsocks.json
echo "\"timeout\":300," >> /etc/shadowsocks.json
echo "\"method\":\"camellia-192-cfb\"," >> /etc/shadowsocks.json
echo "\"fast_open\": false," >> /etc/shadowsocks.json
echo "}" >> /etc/shadowsocks.json

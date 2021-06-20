#!/usr/bin/env bash

echo -e "\033[32m\033[01m\033[05m先安装V2Ray \033[0m"
bash <(curl -sL https://raw.githubusercontent.com/helloted/Ladder_App/master/v2ray_centos8_backup.sh)

echo -e "\033[32m\033[01m\033[05m更新配置 \033[0m"
curl -L https://raw.githubusercontent.com/helloted/Ladder_App/master/config.json -o /etc/v2ray/config.json
echo -e "\033[32m\033[01m\033[05m最新配置\033[0m"
cat /etc/v2ray/config.json
echo -e "\033[32m\033[01m\033[05m重启V2Ray \033[0m"
systemctl  restart  v2ray

echo -e "\033[32m\033[01m\033[05m关闭防火墙 \033[0m"
systemctl stop firewalld.service
systemctl disable firewalld.service
echo -e "\033[32m\033[01m\033[05m防火墙状态 \033[0m"
firewall-cmd --state

echo -e "\033[32m\033[01m\033[05m开启BBR \033[0m"
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
echo -e "\033[32m\033[01m\033[05mBBR状态\033[0m"
sysctl -p

echo -e "\033[32m\033[01m\033[05m重启\033[0m"
reboot

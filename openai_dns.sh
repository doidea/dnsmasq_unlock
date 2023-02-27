#!/bin/bash

if grep -Eqi "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    yum install bind-utils
    yum install -y dnsmasq
elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
    apt-get update
    apt-get install dnsutils
    apt install -y dnsmasq
elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
    apt-get update
    apt-get install dnsutils
    apt install -y dnsmasq
else
    echo "This script only supports CentOS, Ubuntu and Debian."
    exit 1
fi

if [ $? -eq 0 ]; then
    systemctl enable dnsmasq
    rm -f /etc/resolv.conf
    echo "nameserver 127.0.0.1" > /etc/resolv.conf
    mkdir -p /etc/dnsmasq.d/ && touch /etc/dnsmasq.d/unlock.conf
    echo "server=1.1.1.1" > /etc/dnsmasq.d/unlock.conf
    echo "server=/ai.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/openai.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/openaiapi-site.azureedge.net/$1" >> /etc/dnsmasq.d/unlock.conf
    
    systemctl restart dnsmasq
    echo "dnsmasq 启动成功"
else
    echo "dnsmasq 安装失败, 请检查仓库状况"
fi

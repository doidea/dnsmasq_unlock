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
    touch /etc/dnsmasq.d/unlock.conf
    echo "server=1.1.1.1" > /etc/dnsmasq.d/unlock.conf
    echo "server=8.8.8.8" >> /etc/dnsmasq.d/unlock.conf
    echo "server=114.114.114.114" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/fast.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflix.ca/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflix.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflix.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixinvestor.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixtechblog.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflxext.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflximg.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflximg.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflxsearch.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflxso.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/nflxvideo.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest1.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest2.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest3.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest4.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest5.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest6.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest7.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest8.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest9.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflixdnstest10.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/netflix.com.edgesuite.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/.dualstack.apiproxy-*.amazonaws.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "server=/.dualstack.ichnaea-web-*.amazonaws.com/$1" >> /etc/dnsmasq.d/unlock.conf
    
    systemctl restart dnsmasq
    echo "dnsmasq 启动成功"
else
    echo "dnsmasq 安装失败, 请检查仓库状况"
fi

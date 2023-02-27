# dnsmasq_unlock
给需要解锁的机子

## 写在前面
1. 确保53端口未占用
2. 确保`/etc/resolv.conf`没有被加锁

## 使用方法
例1：Netflix
```
wget https://raw.githubusercontent.com/doidea/dnsmasq_unlock/main/nf_dns.sh && chmod +x nf_dns.sh && ./nf_dns.sh 解锁IP
```
例2：OpenAI
```
wget https://raw.githubusercontent.com/doidea/dnsmasq_unlock/main/openai_dns.sh && chmod +x openai_dns.sh && ./openai_dns.sh 解锁IP
```

## 自定义配置文件
前去`/etc/dnsmasq.d/unlock.conf`修改，然后重启dnsmasq
```
systemctl restart dnsmasq
```

## 不再使用
直接修改`/etc/resol.conf`中的`127.0.0.1`为其他dns即可，如：`8.8.8.8`, `1.1.1.1`

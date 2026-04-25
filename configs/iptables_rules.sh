#!/bin/bash

# Увімкнення пересилання пакетів у ядрі
echo 1 > /proc/sys/net/ipv4/ip_forward

# Маскування трафіку (NAT) через зовнішній інтерфейс
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

# Дозвіл на проходження транзитного трафіку
iptables -P FORWARD ACCEPT

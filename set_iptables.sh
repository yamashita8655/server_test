#!/bin/bash
iptables -F
iptables -A INPUT -s! 169.254.163.96 -p tcp --dport 22 -j LOG --log-prefix "IPTABLES_INPUT_LOG : " --log-level=info
iptables -P INPUT DROP
iptables -A INPUT -s 169.254.163.96 -p tcp --dport 22 -j ACCEPT


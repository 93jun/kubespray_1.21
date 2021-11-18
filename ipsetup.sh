#!/bin/bash
iptables -t nat -A OUTPUT -d 172.31.14.165 -j DNAT --to-destination 3.36.176.5
iptables -t nat -A OUTPUT -d 10.178.0.2 -j DNAT --to-destination 34.64.144.164
iptables -t nat -A OUTPUT -d 10.36.22.237 -j DNAT --to-destination 101.101.211.95
iptables -t nat -A OUTPUT -d 10.0.0.4 -j DNAT --to-destination 52.141.23.129
iptables -t nat -A INPUT -d 129.254.170.157 -s 34.64.144.164 -j SNAT --to-source 10.178.0.2
iptables -t nat -A INPUT -d 129.254.170.157 -s 3.36.176.5 -j SNAT --to-source 172.31.14.165
iptables -t nat -A INPUT -d 129.254.170.157 -s 101.101.211.95 -j SNAT --to-source 10.36.22.237
iptables -t nat -A INPUT -d 129.254.170.157 -s 52.141.23.129 -j SNAT --to-source 10.0.0.4

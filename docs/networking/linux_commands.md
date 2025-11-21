# Linux network commands

test connection to host: ping www.google.com

ports: netstat -antp

check port: telnet ip port

nmap: nmap localhost

DNS Lookup: dig www.google.com or nslookup www.google.com

Gateways: route -n or route

Macadress (kernels arp table): arp

Live Packets: mtr

edit host file: vim /etc/hosts
#!/usr/bin/bash
# Author V.Varbanovski
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo "Give the domain name, for example: example.com"
echo -e "${RED}NOTE: You can use www.example.com${ENDCOLOR}"
read target

	echo -e "${GREEN}Give your DNS server IP. WARNING: This will redirect the traffic to authoritative DNS servers!${ENDCOLOR}"
	read dns
		echo -e "${RED}Please wait...${ENDCOLOR}"
	sleep 3;
		dig @$dns $target
exit 0;

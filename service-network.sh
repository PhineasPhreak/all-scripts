#!/bin/bash


lightgreen="\033[0;32m"
lightcyan="\033[0;36m"
yellow="\033[0;33m"
lightred="\033[0;31m"
nc="\033[0m"

echo -e "[${yellow}*${nc}] Redemarrage Des Services, Suivant..."
echo -e "\t[${lightred}-${nc}] networking\n\t[${lightred}-${nc}] network-manager\n\t[${lightred}-${nc}] wpa_supplicant\n"

echo -e "[${lightgreen}+${nc}] Service Networking"
sudo systemctl restart networking.service || echo -e "${lightred}Impossible De Redemarrer Ce Service${nc}"
sleep 1

echo -e "[${lightgreen}+${nc}] Service Network-Manager"
sudo systemctl restart network-manager.service || echo -e "${lightred}Impossible De Redemarrer Ce Service${nc}"
sleep 1

echo -e "[${lightgreen}+${nc}] Service Wpa_Supplicant"
sudo systemctl restart wpa_supplicant.service || echo -e "${lightred}Impossible De Redemarrer Ce Service${nc}"
sleep 1

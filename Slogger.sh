#!/bin/bash
#Author
#Sayeed Hossain
#sayeedhatim@gmail.com
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'

clear
echo -e """${red}
  ██████  ██▓     ▒█████    ▄████   ▄████ ▓█████  ██▀███  
▒██    ▒ ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒ ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
░ ▓██▄   ▒██░    ▒██░  ██▒▒██░▄▄▄░▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
  ▒   ██▒▒██░    ▒██   ██░░▓█  ██▓░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
▒██████▒▒░██████▒░ ████▓▒░░▒▓███▀▒░▒▓███▀▒░▒████▒░██▓ ▒██▒
▒ ▒▓▒ ▒ ░░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒  ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
░ ░▒  ░ ░░ ░ ▒  ░  ░ ▒ ▒░   ░   ░   ░   ░  ░ ░  ░  ░▒ ░ ▒░
░  ░  ░    ░ ░   ░ ░ ░ ▒  ░ ░   ░ ░ ░   ░    ░     ░░   ░ 
      ░      ░  ░    ░ ░        ░       ░    ░  ░   ░     
					__Author__:Sayeed Hossain
					__Email__:sayeedhatim@gmail.com
"""
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo -e """ ${cyan}
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        r.Reload Slogger
        i.Install All Requierment
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 	s.start keylogger
	e.exit
"""
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++'

read -p "Slogger>: " option
case "$option" in
          r)./utool.sh
            ;;
 	 i)clear
          ./install.sh
          ;;
	 s)clear
	 python3 zlogger.py 

	 ;;
	e)clear
	exit
	;;

          esac


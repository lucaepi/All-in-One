#!/bin/sh
# By Luca Epifanio
#Options:

echo "   _____  .__  .__     .__          ________                  "
echo "  /  _  \ |  | |  |    |__| ____    \_____  \   ____   ____   "
echo " /  /_\  \|  | |  |    |  |/    \    /   |   \ /    \_/ __ \  "
echo "/    |    \  |_|  |__  |  |   |  \  /    |    \   |  \  ___/  "
echo "\____|__  /____/____/  |__|___|  /  \_______  /___|  /\___  > "
echo "        \/                     \/           \/     \/     \/   "     
echo "================== CUSTOMIZE YOUR SCRIPTS =================="
echo
echo "::: All in One - Customize your scripts v. 1.0"
echo "::: By Luca Epifanio"
echo
echo  "\033[33;40;5m\033[1m Select an option: \033[0m"
echo  "[1] Traceroute "
echo  "[2] DNS Resolution "
echo  "[3] Check Loadbalancing "
echo  "[4] Quick Nmap Scan  "
echo  "[5] Nmap Stealth Scan"
echo  "[6] Nmap Vulnerability Scan"
echo  "[7] Unicorn UDP Scan"
echo  "[8] Xprobe2 (fingerprinting)"
echo  "[9] Nikto Web Application Scan"
echo  "[10] Check HTTP Methods"
echo  "[11] Test SSL"
echo  ""


echo  "\033[33;40;5m\033[1m Insert test number: \033[0m"
read n
case $n in
    1)
   echo -n "\033[33;40;5m\033[1m[TRACEROUTE] Insert IP or Host: \033[0m"
   echo


   #Read input
   read IP
   echo

   sudo tcptraceroute $IP
     echo
   ;;

2)
   echo -n "\033[33;40;5m\033[1m[DNS RESOLUTION] Insert IP or Host: \033[0m"
   echo

   #Read input
   read IP
   echo

   sudo dig @8.8.8.8 $IP
     echo
   ;;

3)
   echo -n "\033[33;40;5m\033[1m[CHECK LOADBALANCING] Insert IP or Host: \033[0m"
   echo

   #Read input
   read IP
   echo

   sudo lbd $IP
     echo
   ;;

4)
   echo -n "\033[33;40;5m\033[1m[QUICK NMAP SCAN] Insert IP or Host: \033[0m"
   echo

   #Read input
   read IP
   echo

   sudo nmap -sV -O $IP
     echo
   ;;

5)
   echo -n "\033[33;40;5m\033[1m[NMAP STEALTH SCAN] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo nmap -sS $IP
     echo
   ;;

6)
   echo -n "\033[33;40;5m\033[1m[NMAP VULNERABILITY SCAN] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo nmap -Pn --script vuln $IP
     echo
   ;;

7)
   echo -n "\033[33;40;5m\033[1m[UNICORN UDP SCAN] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo unicornscan -mU -r200 -I $IP
     echo
   ;;
   
8)
   echo -n "\033[33;40;5m\033[1m[XPROBE2 FINGERPRINTING] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo xprobe2 $IP
     echo
   ;;

9)
   echo -n "\033[33;40;5m\033[1m[NIKTO SCAN] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo nikto -h $IP -p 443
     echo
   ;;
   
10)
   echo -n "\033[33;40;5m\033[1m[CHECK HTTP METHODS] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo curl --insecure -v -X OPTIONS http://$IP
     echo
   ;;

11)
   echo -n "\033[33;40;5m\033[1m[TEST SSL] Insert IP or Host: \033[0m"
   echo ""

   #Read input
   read IP
   echo

   sudo sslyze --regular $IP
     echo
   ;;


esac

echo
echo "Done!"

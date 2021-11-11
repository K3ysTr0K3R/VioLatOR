#!/bin/bash
#coded by K3ysTr0K3R

clear 
echo -e '\e[36m '
echo -e '\e[36m '
echo -e '\e[36m '
echo -e '\e[36m '

echo -e '\e[31m    
                        ▄▄▄▄▄▄▄▄
                  █   ▄██████████▄
                 █▐   ████████████
                 ▌▐  ██▄▀██████▀▄██
                ▐┼▐  ██▄▄▄▄██▄▄▄▄██
                ▐┼▐  ██████████████
                ▐▄▐████─▀▐▐▀█─█─▌▐██▄
                  █████──────────▐███▌
                  █▀▀██▄█─▄───▐─▄███▀
                  █  ███████▄██████
                     ██████████████
                     █████████▐▌██▌
                     ▐▀▐ ▌▀█▀ ▐ █
                           ▐    ▌
                                 '

		   echo -n -e '\e[36m please input your target <:domain:> here > ::'
		   read A 
		   echo 'finding domains<><>Please<>Wait_Loading...Loading...'
		   echo '==============================================================='
		   echo "finding domains on $A"
		   echo '==============================================================='
		   echo "making a folder for $A and saving it in LoveGASS folder project"
		   echo '==============================================================='
		   mkdir $A
		   assetfinder $A | cat > violator.txt
		   cat violator.txt | httprobe | cat >> violator.txt
		   cat violator.txt
		   echo '==========================='
		        
      echo -e '\e[33m  
           ▄▄▄▄
         ▄██████      ▄▄▄█▄
       ▄██▀   ▀██▄     ████████▄
      ███       ██      █▀▀▀▀▀██▄▄
     ▄██▌       ██     ▐▌        ▀█▄
     ███  ▐█ █▌ ██     █▌          ▀▌
    ████ ▐█▌ ▐█▌██    █
   ▐████ ▐     ▌██   █
    ████   ▄█   ██  ▐█
    ████   ██  ██▌  █▌
    ████▌ ▐█  ███   █
    ▐████  ▌ ███   ██
     ████   ███    █▌
   ██████▌ ████   ██
 ▐████████████  ███
 █████████████▄████
██████████████████
██████████████████
█████████████████▀
█████████████████
████████████████
████████████████
'
                    
sudo mv violator.txt ./$A

echo -n "would you like to scan with nikto with those results?(y/n)"
FILE=violator.txt
if [ $FILE == "y" ]
then
	nikto -h $FILE --ssl
fi

echo -n 'input your target here for DNSRECON::'
read B
echo "scanning $B with DNSrecon"
dnsrecon -d $B | cat > DNS
echo "scanning with fierce on $B"
fierce --domain $B | cat >> DNS
cat DNS
sudo mv DNS ./$A

         echo '============================ vuln base and recon ============================'
         
	 echo '()()()()()()()()()()()()()()()()()()'
	 echo '(){1} Nmap-vuln                   ()'
	 echo '(){2} http-enum + DNSbrute        ()'
         echo '(){3} nuclei                      ()'
         echo '(){4} BruteForce//ssh             ()'
         echo '(){5} Nslookup                    ()'
	 echo '(){6} Normal-nmapScan             ()'
	 echo '(){7} Masscan                     ()'
         echo '()()()()()()()()()()()()()()()()()()'
     
read type

if [ $type -eq 1 ]; then
      echo '#######################'
      echo 'insert target for vulns'
      echo '#######################'

read vuln
nmap -sV --script vuln -Pn -T5 $vuln
echo '########'
echo 'complete'
echo '########'
fi

if [ $type -eq 2 ]; then
echo '###################################'
echo 'input target for enum and dns-brute'
echo '###################################

read http
nmap -sV --script http-enum,dns-brute $http
echo '########'
echo 'complete'
echo '########'
fi
if [ $type -eq 3 ]; then
echo '#############################'
echo 'place target for nuclei magic'
echo '#############################'
read nuclei
nuclei -u $nuclei
echo '########'
echo 'complete'
echo '########'
fi
   if [ $type -eq 4 ]; then
   echo '#######################################'
   echo 'place the target you want to bruteforce'
   echo '#######################################'
   
read brute
ncrack -U admin.txt -P password.txt $brute:22
echo '########'
echo 'complete'
echo '########'
fi
if [ $type -eq 5 ]; then
echo '#############################'
echo 'place your target <domain/ip>'
echo '#############################'
read nslookup

nslookup $nslookup
echo '########'
echo 'complete'
echo '########'
fi
if [ $type -eq 6 ]; then
echo '#################################'
echo 'place target for normal nmap-scan'
echo '#################################'
read nmap

nmap -sV $nmap -Pn
echo '#######################################################'
echo 'completed but do you want to store them in a file?(y/n)'
echo '#######################################################'
if [ $nmap == 'y' ]
    then
       nmap -sV $nmap > nmap_results.txt
       fi
       
       if [ $type -eq 7 ]; then
       echo '###############################'
       echo 'give me a target for a masscan'
       echo '###############################'       
       read masscan
       masscan $masscan/24
       echo '########'
       echo 'complete'
       echo '########'
       fi
  if []

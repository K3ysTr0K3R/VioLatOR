#!/bin/bash
#coded by jaredbrts
#coded with love/lol

clear 
echo -e '\e[36m Love you Kiersten i miss you extremely My Princess i will never ever let YOU GO:XOXO😘️😘️💖️💖️💖️'
echo -e '\e[36m Im glad your in my life and im happy that we can live our lifes and experience this journey together🥰️😘️💖️💖️💖️💖️💖️'
echo -e '\e[36m Im stuck to you like glue NO MATTER WHAT😘️😘️😻️😻️💖️💖️💖️'
echo -e '\e[36m Your my bestfriend and my first love🥺️🥰️🥰️🥰️❤️❤️❤️❤️❤️'

echo -e '\e[31m    
           $$$$         $$$$
         $$$$$$$$     $$$$$$$$
       $$$$$$$$$$$$ $$$$$$$$$$$$
      $$$$$$$$$$$$$$$$$$$$$$$$$$$
      $$$$$$$$$$$$$$$$$$$$$$$$$$$
       $$$$$$$$$$$$$$$$$$$$$$$$$
        $$$$$$$$$$$$$$$$$$$$$$$
          $$$$$$$$$$$$$$$$$$$
             $$$$$$$$$$$$$
                $$$$$$$
                  $$$
                   $'

		   echo -n -e '\e[36m please input your target <:domain:> here > ::'
		   read A 
		   echo 'finding domains<><>for you my love'
		   echo '💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️'
		   echo "finding domains on $A"
		   echo '💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️💘️'
		   echo "making a folder for $A and saving it in LoveGASS folder project"
		   echo ''
		   mkdir $A
		   assetfinder $A | cat > LoveGASS.txt
		   cat LoveGASS.txt | httprobe | cat >> LoveGASS.txt
		   cat LoveGASS.txt
		   echo '💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️💝️'
		   echo '💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️💖️'
		        
      echo -e '\e[33m
        ╱▔▔▔▔▔▔▔▔╲ 
       ╱▔▔▔▔▔▔▔▔╲╱┈┈┈┈
       ▏┳╱╭╮┓┏┏┓▕╱▔▔╲┈
       ▏┃╱┃┃┃┃┣▏▕▔▔╲╱▏
       ▏┻┛╰╯╰╯┗┛▕▕▉▕╱╲
       ▇▇▇▇▇▇▇▇▇▇▔▔▔╲▕
       ▇▇╱▔╲▇▇▇▇▇╱▔╲|/
         ╲▂╱     ╲▂╱'

                    
sudo mv LoveGASS.txt ./$A

echo -n "would you like to harvest emails from $A?(y/n)"
read A
if [ $A == "y" ]
then
	emailfinder -d $A
fi

echo 'love you babes you mean so so much to me🥰️💖️😘️💝️❤️'
echo -n 'input your target here for DNSRECON::'
read B
echo "scanning $B with DNSrecon🥰️💖️😘️💝️❤️"
dnsrecon -d $B | cat > DNS
echo "scanning with fierce on $B 🥰️💖️😘️💝️❤️"
fierce --domain $B | cat >> DNS
cat KierstenDNS
sudo mv DNS ./$A

         echo '❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️ vuln base and recon ❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️❤️‍🔥️'

	 echo '{1} vuln'
	 echo '{2} http-enum + DNSbrute'
         echo '{3} nuclei'
         echo '{4} BruteForce'
         echo '{5} Nslookup'
	 echo '{6} nmapScan'
	 echo '{7} Masscan'
     
read type

if [ $type -eq 1 ]; then
      echo '💌️💌️💌️💌️💌️😻️😻️😻️😻️😻️😻️'
      echo 'insert target for vulns'
      echo '💌️💌️💌️💌️💌️😻️😻️😻️😻️😻️😻️'

read vuln
vuln="nmap -sV --script vuln -Pn -T5 $vuln"
echo '💘️💘️💘️💘️💘️💖️💖️💖️💖️💖️'
$vuln
echo '💘️💘️💘️💘️💘️💖️💖️💖️💖️💖️'
echo 'complete'
fi

if [ $type -eq 2 ]; then
read http-enum+DNSbrute
echo '💌️💌️💌️💌️💌️😻️😻️😻️😻️😻️😻️'
echo 'input target'
echo '💌️💌️💌️💌️💌️😻️😻️😻️😻️😻️😻️'

read http
http="nmap -sV --script http-enum,dns-brute $http"
echo ''
$http
echo ''
echo 'complete'
fi



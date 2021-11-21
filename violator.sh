#!/bin/bash
#coded by MegaMind707

clear 
echo -e '\e[36m '
echo -e '\e[36m '
echo -e '\e[36m '
echo -e '\e[36m '

echo -e '\e[31m '

		   echo -n -e '\e[36m please input your target <:domain:> here > ::'
		   read A 
		   echo 'finding domains<><>Please<>Wait_Loading...Loading...'
		   echo '==============================================================='
		   echo "finding domains on $A"
		   echo '==============================================================='
		   echo "making a folder for $A and saving it in VioLatOR folder project"
		   echo '==============================================================='
		   mkdir $A
		   assetfinder $A | cat > violator.txt
		   cat violator.txt | httprobe | cat >> violator.txt
		   cat violator.txt
		   echo '============================================================================='
                   echo 'looking for access points and saving it in your file called ACCESS.points.txt'
		   echo '============================================================================='
		   whatweb -i violator.txt | cat > ACCESS.points.txt
		   
		        
      echo -e '\e[33m '
                    
sudo mv violator.txt ./$A

echo -n "would you like to scan with nikto with those results? it will take awhile(y/n)"
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
         
	 echo '()()()()()()()()()()()()()()()()()()()()()()()'
	 echo '(){1} Nmap-vuln              |  amass       ()'
	 echo '(){2} http-enum + DNSbrute   |  sublister   ()'
         echo '(){3} nuclei                 |  whatweb/24  ()'
         echo '(){4} BruteForce//ssh        |              ()'
         echo '(){5} Nslookup               |              ()'
	 echo '(){6} Normal-nmapScan        |              ()'
	 echo '(){7} Masscan                |              ()'
         echo '()()()()()()()()()()()()()()()()()()()()()()()'
     
read Z

if [ $Z -eq 1 ]; then
      echo '#######################'
      echo 'insert target for vulns'
      echo '#######################'

read vuln
nmap -sV --script vuln -Pn -T5 $vuln
echo '########'
echo 'complete'
echo '########'
fi

if [ $Z -eq 2 ]; then
echo '###################################'
echo 'input target for enum and dns-brute'
echo '###################################

read http
nmap -sV --script http-enum,dns-brute $http
echo '########'
echo 'complete'
echo '########'
fi
if [ $Z -eq 3 ]; then
echo '#############################'
echo 'place target for nuclei magic'
echo '#############################'
read nuclei
nuclei -u $nuclei
echo '########'
echo 'complete'
echo '########'
fi
   if [ $Z -eq 4 ]; then
   echo '#######################################'
   echo 'place the target you want to bruteforce'
   echo '#######################################'
   
read brute
ncrack -U admin.txt -P password.txt $brute:22
echo '########'
echo 'complete'
echo '########'
fi
if [ $Z -eq 5 ]; then
echo '#############################'
echo 'place your target <domain/ip>'
echo '#############################'
read nslookup

nslookup $nslookup
echo '########'
echo 'complete'
echo '########'
fi
if [ $Z -eq 6 ]; then
echo '#################################'
echo 'place target for normal nmap-scan'
echo '#################################'
read nmap
nmap -sV $nmap -Pn
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
  if [ $type -eq 8 ]; then
  echo '##############################'
  echo 'place a target for amass recon'
  echo '##############################'
  read amass
  
  amass enum -ip -d $amass
  echo '########'
  echo 'complete'
  echo '########'
  fi

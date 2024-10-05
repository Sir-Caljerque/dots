//linux commands
//The following commands can be executed in Terminal mode and shell programming.

Terminal mode command vs shell programming files

* compgen -c will list all the commands you could run.
* compgen -a will list all the aliases you could run.
- compgen -b will list all the built-ins you could run.
- compgen -k will list all the keywords you could run.
- compgen --help  list all the functions you could run.
- compgen -ac | wc -l  amount of commands and aliases you could run

* `tab tab`
	that is the tab key twice, lists the name of Linux terminal mode commands

* `history`
	list all previous commands executed   		

* `apt-get` history
	* download a program from a linux location

* `curl` & `wget`
	* Use the curl or wget commands to download a file from the Internet without leaving the terminal. If you are using curl, type curl -O followed by the path to the file. wget users can use wget 

* curl -O domain
	* http://users.cis.fiu.edu/~mrobi002/databases/RAMerrors8x4

* wget domain
	* http://users.cis.fiu.edu/~mrobi002/databases/RAMerrors8x4

* ping domain
	* to find an ip address

fping domain
	check if domain is alive or unreachible

cat fileName
	display a file

cd ../   ../../  ~   /  etc
	change directory

clear
	clear screen

cp sourceFile destinationFile
	copy, can use multiple locations types (relative, absolute)

date
	show date

echo 
	display

//REGULAR EXPRESIONS
//******************
grep a 
	find all a in all files that have a . character
	
grep '[^a-zA-Z0-9] fileName
	anything not a letter or number  in fileName
	
grep '[0-9]\{3\}-[0-9]\{4\}' fileName
	999-9999, like phone numbers  in fileName
	
grep '^.$' fileName
	lines with exactly one character  in fileName
	
grep '"lines with qoutes"' fileName
	"lines with qoutes"  in fileName
	
grep '^\.' fileName
	any line that starts with a Period "."  in fileName
	
grep '^\.[a-z][a-z]' fileName
	line start with "." and 2 lc letters  in fileName
grep 'B[oO][bB]' files fileName
	search for BOB, Bob, BOb or BoB in fileName
	
grep "t[wo]o" fileName
	searches for two, too  in fileName
	
grep -i [aA] fileName
	searches for a, A  in fileName   

//rename multiple file REGULAR EXPRESIONS
//subtitute all files that have .ba  to .bat for all files name .ba rename 's/\.ba/\.bat/' .ba
	windows OS

sed -i 's/old-x/new-x/g' input.txt
	The s is the substitute command of sed for find and replace It tells sed to find all occurrences of 'old-x' and replace with 'new-x' in a file named input.txt
  
locate .tmp
	locate files
findstr .java
	windows locate equivalent

locate .c > cPrograms
	redirecting output

find -name
	find files

help
	help all commands

ls --help
	command --help

man ls
	manual for all commands, man command

ls
	list directory sideways

ls .c
	wildcards

ls -la
	list directory, one entry per line, will all attributes

ls -t
	list directory order by recent date

ln -s sourceDir shortCutName
	creating soft links, do a ls to show how it is displayed

mkdir name
	make directory

mkdir ../name
	relative vs absolute locations  

more
	displays file contents,  forwards only

less
	displays file contents,  forwards and backwards

*** what is a file, type of files

touch fileName
	create an empty file

head -5 fileName
	display the first 5 files of fileName

tail -5 fileName
	display the last 5 files of fileName

command | command
	pipe command takes the left command output and give to to command on the right  as input

cat fileName | less
	example

cat fileName | more
	example

mv sourceFile destinationFile
	move, can use multiple locations types (relative, absolute)

rm fileName
	delete file

rmdir directoryName
	delete folder, most be empty in Linux  

top
	display running programs shows pid

kill pid
	terminate running program

putty
	graphical ssh

ssh mrobi002@ocelot.aul.fiu.edu
	access target server with full control

pwd
	present working directory

who
	Displays information about users who are currently logged in 

whoami
	Print the user name associated with the current effective user ID. 

id -un
	same  as whoami

tracepath domain
	- The tracepath command is similar to traceroute, but it does not require root privileges. It is also installed by default on Ubuntu, while traceroute is not.
	- tracepath traces the network path to a destination you specify and reports each hop along the path. 
	- If you are having network problems or slowness, tracepath can show you where the network is failing or where the slowness is occurring.

traceroute domain
	linux   print the route packets trace to network host  
tracert    doamin
	windows print the route packets trace to network host  

mtr        domain
	The mtr command combines ping and tracepath into a single command. mtr will continue to send packets, showing you the ping time to each hop. This will also show you any problems in this case, we can see that hop 6 is losing over 20% of the packets.

OS1 oct 24, 2018

								
host       domain
	The host command performs DNS lookups. Give it a domain name and you will see the associated IP address. Give it an IP address and you will see the associated domain name.

ip addr
	shows all ip address being used in host

os4 oct 22, 2018 here

ifconfig
	The ifconfig command has a variety of options to configure, tune, and debug your system is network interfaces. It is also a quick way to view IP addresses and other network interface information. Type ifconfig to view the status of all currently active network interfaces, including their names. 

ifconfig eth0
	You can also specify an interfaceâ€™s name to view only information about that interface.  

ifconfig lo

ifconfig wlan

ifconfig -a | grep eth

ifconfig up or ifconfig down
	Given an interface's name, (eth, wlan, etc) they take the interface down or bring it up.

ifdown & ifup
	The ifdown and ifup commands are the same thing as running ifconfig up or ifconfig down. Given an interface's name, they take the interface down or bring it up. This requires root permissions, so you have to use sudo on Ubuntu.

sudo ifdown eth0

sudo ifup eth0

sudo lshw -class network
	"I did a > lshw.dat  do a cat to it" Another application that can help dentify all network interfaces available to your system is the lshw command. In the example below, lshw shows a single Ethernet interface with the logical name of eth0 along with bus information, driver details and all supported capabilities.

ethtool
	is a program that displays and changes Ethernet card settings such as auto-negotiation, port speed, duplex mode, and Wake-on-LAN. It is not installed by default, but is available for installation in the repositories.

#sudo apt-get install ethtool
	installing ethtool

#sudo ethtool eth0
	run ethtool on eth0

ifplugstatus
	The ifplugstatus command will tell you whether a cable is plugged into a network interface or not. It isnâ€™t installed by default on Ubuntu. Use the following command to install it:

sudo apt-get install ifplugd
	install ifplugd, Run command to see the status of all interfaces or specify a specific interface to view its status.

ifplugstatus
	ifplugd is a daemon which will automatically configure your ethernet device when a cable is plugged in and automatically unconfigure it if the cable is pulled.

ifplugstatus eth0

dhclient
	The dhclient command can release your computerâ€™s IP address and get a new one from your DHCP server. This requires root permissions, so use sudo on Ubuntu. Run dhclient with no options to get a new IP address or use the -r switch to release your current IP address.

sudo dhclient -r
sudo dhclient

netstat
	The netstat command can show a lot of different interface statistics, including open sockets and routing tables. Run the netstat command with no options and you will see a list of open sockets.

sudo netstat -plunt
	scans all ?? ports  

netstat -p
	There is a lot more you can do with this command. For example, use this command to view the programs associated with open sockets.

netstat -r
	Add the option -r to display information on the routeing table.

tcpdump
	Tcpdump captures packets off a network interface and interprets them for you. It can be used to save entire packets for later inspection.
                                 
sudo tcpdump -v

route
	The route command is the tool used to display or modify the routeing table.

Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         192.168.43.1    0.0.0.0         UG    0      0        0 wlan0
link-local      *               255.255.0.0     U     1000   0        0 wlan0
192.168.43.0    *               255.255.255.0   U     2      0        0 wlan0
192.168.122.0   *               255.255.255.0   U     0      0        0 virbr0

nslookup google.com
	This command is used to find DNS related query.
Server:		127.0.0.1
Address:	127.0.0.1#53

Non-authoritative answer:
Name:	google.com
Address: 172.217.2.238

dig google.com
	dig (domain information groper) query DNS related information like A, CNAME, MX Record etc. This command mainly use to troubleshoot DNS related query.
; <<>> DiG 9.8.1-P1 <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 13313
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		148	IN	A	172.217.2.238

;; Query time: 672 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Fri Mar 23 14:56:54 2018
;; MSG SIZE  rcvd: 44


arp -e
	ARP (Address Resolution Protocol) is useful to view / add the contents of the kernel's ARP tables. To see default table use the command as.
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.43.1             ether   18:21:95:14:23:2e   C                     wlan0


iwconfig
	command in Linux is use to configure a wireless network interface. You can see and set the basic Wi-Fi details like SSID channel and encryption. You can refer man page of iwconfig to know more.
	
iwconfig 
lo        no wireless extensions.

virbr0    no wireless extensions.

wlan0     IEEE 802.11bgn  ESSID:"OS4IT"  
          Mode:Managed  Frequency:2.437 GHz  Access Point: 18:21:95:14:23:2E   
          Bit Rate=72.2 Mb/s   Tx-Power=20 dBm   
          Retry  long limit:7   RTS thr=2347 B   Fragment thr:off
          Power Management:off
          Link Quality=63/70  Signal level=-47 dBm  
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:18   Missed beacon:0

eth0      no wireless extensions.

whois
	to find how a domain name is registered

static  ip addresses
	An address that is constant, it does not change

dynamic ip addresses
	An address that changes based on the change time applied to it

vpn
	secure communication from one cpu to another    

ipv4
	internet ip addresses of 192.168.0.1

ipv6
	internet ip addresses of hexadecimal of 128 characters

internet2
	internet2.edu  .com  .org  ciara.fiu.edu

lan
	a cluster of computers that are geographically close typical cable is cat 
      
wan
	a cluster of lans connected to each, and NOT geographically close typical cable is fiber optics
								
man
	Metropolitan Area Network, a cluster of computer in a metropolital area
 
nmap
	nmap -  Network exploration tool and security / port scanner
	Usage:  nmap *Scan Type(s)* *Options* {target specification}

examples
--------
nmap -A -T4  scanme.nmap.org 
Starting Nmap 5.21 ( http://nmap.org ) at 2018-03-23 13:51 EDT
Warning: 45.33.32.156 giving up on port because retransmission cap hit (6).

nmap -A [IP address]: shows the services running behind all ports of an IP address(this is enumeration)
nmap -A 192.168.43.89

Starting Nmap 5.21 ( http://nmap.org ) at 2018-03-23 14:07 EDT
Nmap scan report for mr-HP-635-Notebook-PC (192.168.43.89)
Host is up (0.0019s latency).
Not shown: 996 closed ports
PORT    STATE SERVICE     VERSION
22/tcp  open  ssh         OpenSSH 5.9p1 Debian 5ubuntu1.10 (protocol 2.0)
| ssh-hostkey: 1024 88:1b:46:64:af:7e:ca:c6:d8:6f:af:9a:96:98:ac:2e (DSA)
|_2048 90:98:51:f3:e4:42:ce:20:86:c5:73:f3:d3:ba:b4:29 (RSA)
80/tcp  open  http        Apache httpd 2.2.22 ((Ubuntu))
|_html-title: Site does not have a title (text/html).
139/tcp open  netbios-ssn Samba smbd 3.X (workgroup: WORKGROUP)
445/tcp open  netbios-ssn Samba smbd 3.X (workgroup: WORKGROUP)
Service Info: OS: Linux

Host script results:
|_nbstat: NetBIOS name: MR-HP-635-NOTEB, NetBIOS user: <unknown>, NetBIOS MAC: <unknown>
| smb-os-discovery:  
|   OS: Unix (Samba 3.6.25)
|   Name: WORKGROUP\Unknown
|_  System time: 2018-03-23 14:08:11 UTC-4
|_smbv2-enabled: Server does not support SMBv2 protocol

Service detection performed. Please report any incorrect results at http://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 11.99 seconds


nmap [IP address]:
	scans all ports (0-65535) on the given IP address, if it is on your current network
                   
nmap 192.168.43.89
Starting Nmap 5.21 ( http://nmap.org ) at 2018-03-23 13:55 EDT
Nmap scan report for mr-HP-635-Notebook-PC (192.168.43.89)
Host is up (0.0018s latency).
Not shown: 996 closed ports
PORT    STATE SERVICE
22/tcp  open  ssh
80/tcp  open  http
139/tcp open  netbios-ssn
445/tcp open  microsoft-ds

Nmap done: 1 IP address (1 host up) scanned in 0.29 seconds
                   
                   
nmap [IP address]   [port #]: //nmap 192.168.43.89 80 scans IP address 192.168.43.89 port 80 (which is HTTP)
nmap 192.168.43.89  80

Starting Nmap 5.21 ( http://nmap.org ) at 2018-03-23 14:12 EDT
Invalid target host specification: 80
QUITTING!


Nmap -p
	specifies a port or range of several ports to scan You can also scan a range of IP addresse and ports: nmap 192.168.1.1-10 20-140 would scan all IP addresses from 192-168.1.1 to 192.168.1.10 and ports in the range of port 20 to port 140
nmap -p 192.168.43.89
nmap -p 192.168.1.1-10,20-140

===========================================================================

Google Hacking
--------------
Google allows us to do special queries to help us find information such as:
- Employee information
- Diagrams
- Brand and type of firewall
- Antivurs name
- Website internal Code
- Website links
- Website containing passwords and other sensitive information in different type of data files  

 
 site:<target website name>
	shows all sites in target containing ..
 site:https://he.kendallhunt.com Michael Robinson

 allintitle:<target website name>
	shows all sites in targets title containing .. 
 allintitle:https://he.kendallhunt.com Michael Robinson

 link:<target website name> name
 link:cs.fiu.edu cyber
	shows all links for this target with name ..

 Link:cs.fiu.edu/~mrobi002
	shows all links for this target

 #info:<target website name>    
 #"Michael Robinson" info:cs.fiu.edu
	shows all links in this target containing Michael Robinson
 #info:google.com "jorge mosquera" 

 #allinurl:<target website name>   
 #Michael  allinurl:<target website name>  

 samples
 -------
 filetype:txt password
 https://www.google.com/search?q=filetype:txt+password&ei=heb8WazuMayVjwSGrpPwDQ&start=10&sa=N&biw=1313&bih=613
 gives us:
   https://csrc.nist.gov/csrc/media/publications/white-paper/1985/12/26/dod-rainbow-series/final/documents/std002.txt
   http://www.public.navy.mil/bupers-npc/support/paypers/pass/documents/mpa%202009/mpa4609.txt
   https://wikileaks.org/sony/docs/01/Other/SPEVENTS/Department%20Documents/Contacts/Office%20Information%20Sheet.txt
   http://www.rlmueller.net/Programs/ResetPassword.txt


 filetype:txt salary
   https://archive.org/stream/MiamiUniversitySalaryRosterOctober2008/MiamiU-salaries-Oct-2008-DEPT_djvu.txt
   http://documents.worldbank.org/curated/en/261191479407289620/text/1479407316251-000A10458-WBG-FY17-2016-Comp-Paper-FOR-PUBLISHING-11142016.txt 


 filetype:txt user name
 https://supportforums.cisco.com/legacyfs/online/customer-config.txt  

 
 filetype:csv password  find all websites that have the word password in csv format
 
 
===========================================================================
//Protocols
ftp     uploads and downloads data from two computers FILEZILA
sftp    uploads and downloads data from two computers secured
tcp/ip

pop3 email for incoming emails
smtp email for outgoing emails
imap email sending and receiving

HTTP://
HTTPs//

      
Pending
-------
 cross-scripting for mission 3
 "<script>function myFunction() {alert("XSS!");}</script>"

 192.168.3.59 -a
 ip address for Virtual Machine
 -A: Enable OS detection, version detection, script scanning, and traceroute

 unicornscan 10.211.55.11 -p 1-65535
                              (ip)

Scan types
TCP connect scan: full tcp handshake -> port open, no handshake -> port
closed

syn scan: syn, ack response -> port open, no response -> port closed

ack scan (firewalking) : rst packet -> open, no response -> closed

fin scan: no response -> open, rst packet -> closed

UDP scan: closed -> icmp port unreachable, open -> no response
UDP does not use TCP flags there no handshake

x-mas scanfin, urg, push: no response -> open, rst -> closed
push is used for streaming packet
urg time sensitive packet

RFC (Rules for Internet)

noise in network - how much info you sending thru network
the least is fin

got to know nmap if you want to be pentest

nmap enumerate the services

nmap ip ping packet to see if up

nmap 10.211.55.11 -F -r -sT

*http://toolbar.netcraft.com/ <http://toolbar.netcraft.com/> useful
toolhttps://www.exploit-db.com/ <https://www.exploit-db.com/>*


*Input validation reason that number 1 validation is InjectionFinger
command   finger username@node.domainA2- Broken Authentication and Session
ManagementSession cookies*

*Get-filehash to check the checksum â€˜fileâ€™get -filehash â€˜Assignment 3.docâ€™
-algorithm sha1Get-help get-filehash Shasum on linuxData integrity *

sed 
https://www.exploit-db.com/google-hacking-database/      
smbclient   ftp-like client to access SMB/CIFS resources on servers

192.168.3.10      
Damn Vulnerable Web Application
user admin
pass password

command execution
	to break up a running command in a web input box
    | to stop command, then run the command desired
	  example | ls -la
	  | whoami

*********************************
WARNING this will kill a linux machine 100%

rm -rf /*

********************************

      

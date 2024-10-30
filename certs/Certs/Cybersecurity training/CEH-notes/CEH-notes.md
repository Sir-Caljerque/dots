

Certified Ethical Hacker (ECH Certification Study Notes)
Written by Michael Robinson

I am currently using the following book, for this class, and I highly recommended it to be used to study to obtain your CEH (Certified Ethical Hacker) Certification:
                      
CEH V11 Certified Ethical Hacker Study Guide
Book by Ric Messier


Chapter 1 Ethical Hacking

*- What is Cyber Security
   - A technology that allows us to protect our employers and clients from unauthorized access 
     to their private information.   

*- Learning and using terminal mode commands 

*- Why Do We Need to Teach Cyber Security

*- Installation of Intranet computers, including hardware and Cyber Security

*- Kali specialized Operating System

*- Hardware analysis with advice to upgrade equipment and cost analysis
   - Switches, Routers and Hubs
   - Antivirus Software
   - User Names and Passwords Security

*- Types of Hackers:
   - Script Kiddies    Have very limited knowledge.

   - White-Hat Hackers Hacking with Permission of the employers and clients.
                       Think like the attacker BUT work for the good guys. 
                       They have a code of ethics that promised NOT to cause harm. 
                       Also called Ethical Hackers or Pent Testers.

   - Black-Hat Hackers Operate in the opposite side of the law. 
                       Black-Hat Hackers and Criminal Activy Hackers are very close 
                       to each others.
                       - Legal Implications
                         Illegal Hacking - US Law 10 years 10K with enhancements.
                         ex: Julian Assange - Bradley Edward Manning US Army   

   - Gray-Hat Hackers  Work in the line between White and Black-Hat Hackers and 
                       can NOT BE TRUSTED

   - Suicide Hackers   Try to DESTROY a target to prove a point. 
                       They are not worry about getting caught and go to jail


- Overview of Ethics 
  - Each Employer has a Code of Ethics that we must follow.
  - CEH's Protect the privacy of the information and intellectual property of their employers and clients.
    being an IT/Computer Science/Cyber Security professional is very useful

  - Why systems can easily be hacked
    - Software that is badly written 
    - IT equipment with default or (very week) user names and passwords 
    - Software and hardware with bad rigths (777 and name others)

  *- Disclose to owners all CONFLICT of interest
  *- If a mistake is made by the CEH make sure to report problem to authorized person in company
  *- Make sure that all data/information acquired while doing a project is reported to an authorize person ONLY 


- Overview of Ethical Hacking
  Ethical Hacking is performed by CEHs whos job is to test the cyber security of a company. They can be 
  the Company's employees and/or external companies hired to perform these tasks.

  A group of Ethical Hackers are also known as a Red Team which plays the role of the attacker, 
  trying to break through cybersecurity defenses by finding vulnerabilities in the system. 
  
  On the other hand, a blue team's job is to defend against attacks, and respond to them when they occur,
  always reporting them to IT/Security management
  


~ Methodologies
  It is very important to have a method that is implemented everytime that we test a system, giving us
  CONSISTENCY, REPEATABILITY AND PROCESS IMPROVEMENT.
  
  CONSISTENCY allows us to run the same sets of test no matter who or when they are being run.
  REPEATABILITY is useful to avoid missing the running of any previous test.
  AND PROCESS IMPROVEMENT allows to develop new and better methods to protect our clients.

  
  - Cyber Kill Chain
    Developed by Lockheed Martin, is a military concept of the structure of an attacker.
    - Reconnainssance      : Reasearch, Identification and selection of targets. Target has been  
                             identified.
    - Weaponization        : Pair malware with exploit (virus vs *.pdf, databases, wordprocessors, 
                             etc )
    - Delivery             : USB, emails, Websites, etc
    - Exploitation         : Once weapon is delivered it gets executed
    - Installation         : Weapon installs a backdoor allowing continues access to target
    - Command and Control  : Attacker communicates with weapons having access to target 
    - Actions on Objective : Attacker obtains objective such as data retrival, destruction, or 
                             access to another target


  - Attack Lifecycle 
    A different attack process that does not continue sending attack from outside to target
    - Initial Recon
    - Initial Compromise    
    - Establish Foothold
    - Escalate Privileges then goto loop  or  Complete Mission
      - loop
        - Internal Recon
        - Move Laterally
        - Maintaining Presence
        - goto Escalate Privilages    
      - Complete Mission - End Process


- Methodology of Ethical Hacking

    Reconnainssance and Footprinting
    - Today it is very easy to obtain information about a target using the free, legal available   
      information posted in the internet and other information that is leaked in purpose. This is
      known as Reconnainssance.
      The identification of a targets locations, hosts, networks, products, employees and their
      personal information are known as Footprints which are later used to access additional
      stages. Some of these target can be in external service providers which can provide entry
      points.


7-13-2022
    Scanning and Enumeration
      - Scanning helps us to identify services running on the target, which could be 
        use as entry points. Open ports are very useful, allowing us to know that 
        services and software is running on them. 

*     There are 65,535 possible port numbers, not all are in common use. 
      
      https://web.mit.edu/rhel-doc/4/RH-DOCS/rhel-sg-en-4/ch-ports.html
      
      - What is a port?
	      - A port is a virtual point where network connections start and end. 
	      - Ports are software-based and managed by a computer's operating system. 
	      - Each port is associated with a specific process or service. 
	      - Ports allow computers to easily differentiate between different kinds of traffic: emails go to a different port than webpages, for instance, even though both reach a computer over the same Internet connection.
		
		There are 65,535 possible port numbers, not all are in common use. 
        
        The most commonly used ports, and their associated networking protocol are:

        Ports 
        20 and 21:
              FTP    File Transfer Protocol 
                     FTP is for transferring files between a client and a server.
        22:   SSH    Secure Shell  
                     SSH is one of many tunneling protocols that create secure network connections.
        23:   TELNET Provides many systems with an unencrypted communications channel for  
                     text-based information
        25:   SMTP   Simple Mail Transfer Protocol 
                     SMTP is used for email.
        53:   DNS    Domain Name System
                     DNS is an essential process for the modern Internet; it matches human-readable 
                     domain names to machine-readable IP addresses, enabling users to load websites 
                     and applications without memorizing a long list of IP addresses.
        80:   HTTP   Hypertext Transfer Protocol 
                     HTTP is the protocol that makes the World Wide Web possible.
        123:  NTP    Network Time Protocol 
                     NTP allows computer clocks to sync with each other, a process that is
                     essential for encryption.
        179:  BGP Border Gateway Protocol 
                     BGP is essential for establishing efficient routes between the large networks
                     that make up the Internet (these large networks are called autonomous
                     systems). Autonomous   systems use BGP to broadcast which IP addresses they
                     control.
        443:  HTTPS  HTTP Secure 
                     HTTPS is the secure and encrypted version of HTTP. 
                     All HTTPS web traffic goes to port 443. 
                     Network services that use HTTPS for encryption, 
                     such as DNS over HTTPS, also connect at this port.
        500:  ISAKMP Internet Security Association and Key Management Protocol
                     is part of the process of setting up secure IPsec connections.
        3389: RDP    Remote Desktop Protocol 
                     RDP enables users to remotely connect to their desktop computers from another 
                     device.
stop here for first quiz 

ipconfig Windows
ifconfig Linux

-  Enumeration
	- Is the list of ways that we found how to get access into a target.    

- Gaining Access
	- Using emails, websites, USB, etc.

- Maintaining Access 
	- Depending on the way you obtained target access, it is possible that if the target re-boots their system you will lose access. Having a backdoor into the target can be a solution.

- Covering Tracks
	- Logs, systems run and maintain logs of every step that happens in a system.
	- There are automatic log backup systems.
	-  If you modify the logs to erase any information about your footprints there are softwares that can detect this, informing the target.

- Summary
	- As a CEH you must follow your employer and clients code of ethics.

Chapter  2 Networking Foundations
    The following exam topcis will be covered in this chapter
        - Networking Technologies
        - Communications Protocols
        - Telecommunications Technologies
        - Network Topologies
        - Subnetting


- Communication Models
    --------------------
	- The OSI Model (Open Systems Intercommunication)

	    7) Application Layer
			- The closest layer to the end user (HTTP)

	    6) Presentation Layer 
			* Is responsable to prepare how the data will be presented to the application layer (layer 7).
			* Examples: ASCII, Unicode, binary, JPEG, etc

	    5) Session Layer 
			- Manages the application communication (server-client), making sure that it is complete and successfully transmitted       

	    4) Transport Layer
       UsesasdaAn Application Load Balancer can sustain secure HTTPS communication and certificates for communications
       These protocols use ports so they know which applications to pass the
       traffic to.

		3) Network Layer
       The IP is one protocol used by the Network Layer 
       to get messages from one end to another, 
       by taking care of addressing and routing.

		2) Data Link Layer
       The MAC (Media Access Control) is the Layer 2 address.
       The ARP (Address Resolution Protocol), 
       VLANs (Virtual Local Area Networks), 
       Ethernet and Frame Relay are the Data Link layer 2 protocols.
       These protocots format the data to be send on the transmision medium.

	    1) Physical Layer
       How the pulses are dictated on the wire are managed by the following protocols:
       10Base2, 10BaseT, 100BaseTX and 1000BaseT


    TCP/IP Architecture Model (Transmission Control Protocol)/IP (Internet Protocol)
    - Application
       Similar to OSI 7) Application Layer
       The closest layer to the end user (HTTP)

    - Transport
       Similar to OSI 4) Transport Layer 
       Uses TCP and UPD protocols to divide the messages into segments for transmission.
       These protocols use ports so they know which applications to pass the
       traffic to.

    - Internet
       Similar to OSI 5) Session Layer 
       Manages the application communication (server-client), making sure that
       it is complete and successfully transmitted       

       Similar to OSI 6) Presentation Layer 
       Is responsable to prepare how the data will be presented to the
       application layer (layer 7). 
       Examples: ASCII, Unicode, binary, JPEG, etc

    - Link
       Similar to OSI 1) Physical Layer
       How the pulses are dictated on the wire are managed by the following protocols:
       10Base2, 10BaseT, 100BaseTX and 1000BaseT

       Similar to OSI 2) Data Link Layer
       The MAC (Media Access Control) is the Layer 2 address.
       The ARP (Address Resolution Protocol), 
       VLANs (Virtual Local Area Networks), 
       Ethernet and Frame Relay are the Data Link layer 2 protocols.
       These protocots format the data to be send on the transmision medium.

    
    Network Topologies
    ==================
    Networks have a physical and a logical part.
    The physical side of the Networks are the foundation of our overall system, it relates directly to the wiring.

    Some physical sides covered in this class are: the bus, the token ring, star, mesh and the hybrid.

    The logical layout of the networks relates to the method of accessing the network, the parts that you can not see or touch, the flow of information and other data.

    Physical Side
    -------------
    - Bus Network
      Connects all nodes to single pipeline also called backbone. Cable used is known as Coaxil Cable.
    
      All signals get on the backbone, travel to the destination, and get off the backbone.
    
      Main problem, if the backbone gets damaged all connectivity is lost. Similar to current Xmas trees, if one light bulb gets disconnected,  then all the light bulbs are turn off.

      Coaxial Cable
      https://en.wikipedia.org/wiki/Coaxial_cable google 
	  
      https://images.search.yahoo.com/search/images?p=network+using+coaxial+cable+bus+topology+using&fr=mcafee&type=E210US91088G91275&imgurl=https%3A%2F%2F4.bp.blogspot.com%2F-kJR8AcV9ujM%2FUAa8TOtVtmI%2FAAAAAAAAAx8%2F5LCOFeM6XaM%2Fs640%2Fbustopology3.JPG#id=1&iurl=https%3A%2F%2F4.bp.blogspot.com%2F-kJR8AcV9ujM%2FUAa8TOtVtmI%2FAAAAAAAAAx8%2F5LCOFeM6XaM%2Fs640%2Fbustopology3.JPG&action=click

    - Token Ring
      Similar to bus topologies but can have redundancy, usually in setups that use Fiber Distributed Data interface (FDDI)
	  
      https://www.google.com/search?q=TOKEN+RING&rlz=1C1CHBF_enUS783US783&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjxlfuVhZviAhWNMd8KHTHfCs0Q_AUIDygC&biw=1455&bih=717

    - Star Network
      There is a center (a hub, switch, router) to where all connections/nodes are connectected,
      if one node gets disconnected the rest of the network continues working. If the hub fails all connects fail
	  
      https://www.google.com/search?rlz=1C1CHBF_enUS783US783&biw=1455&bih=717&tbm=isch&sa=1&ei=FrfaXNjSMeSm_QbiqayoAQ&q=star+topology&oq=STAR+&gs_l=img.1.2.0i67l4j0j0i67l3j0j0i67.29920.36649..39902...0.0..0.107.1059.13j1......2....1..gws-wiz-img.....0..35i39.YrRt6A9B8sc

    - Mesh Network
      Where all connections are conected to each other. Very expensive and complex to build, but very reliable because of its redundance and resistance to outages. 
      The internet is a large mesh used in mission critical services
	  
      https://www.google.com/search?rlz=1C1CHBF_enUS783US783&biw=1455&bih=717&tbm=isch&sa=1&ei=FrfaXNjSMeSm_QbiqayoAQ&q=mesh+topology&oq=MESH&gs_l=img.1.0.0i67j0j0i67j0l7.2473.5996..8857...0.0..0.217.1284.11j1j1......2....1..gws-wiz-img.....0..35i39.VzuudnaWS5Q

    - Hybrid Network
      Hybrid systems are create by combining multiple topoligies such as stars, ring, wireless connected to bus selecting the best of each for specific needs.
	  
      https://www.google.com/search?rlz=1C1CHBF_enUS783US783&biw=1455&bih=717&tbm=isch&sa=1&ei=drfaXOrZIq-AtgX38ruwBQ&q=hybrid+topology&oq=HYBRID&gs_l=img.1.0.0i67j0j0i67l2j0l4j0i67l2.37309.39150..41945...0.0..2.98.1161.13......2....1j2..gws-wiz-img.....0.xi0CrqUz344


    Logical Side
    ------------
    Today, rouge wireless access points, a smartphone, and/or a little social engineering can LOGICALLY put a hacker into a system without actually obtaining physical access.

**    
    
~    IPv4 and IPv6 Addressing 
    ------------------------
    - IP version 4 (IPv4) are 4 octects long, separated by (.). Since each value is 8 bits
      its values are from 0 to 255, therefore it uses decimal numbers, some addresses are reserved.

      There are about 4 billion IPv4 addresses.
      
      127.0.0.0  -  127.255.255.255.255 are reserved for loopback.
      The loopback address, also called localhost, is is an internal address that routes back to
      the local system. The loopback address in IPv4 is 127.0. 01. it sends outgoing signals back to the same computer for testing.
    
        10.0.0.0   -  10.255.255.255 
      172.16.0.0   -  172.31.255.255 and
      192.168.0.0  -  192.169.255.255
      
      used to have address that do not have public addresses.

      
    - IP version 6 (IPv6) uses 16 bits uses hexadecimal digits
      fe80::402a:2487:41ae:8085%16
      fe80:0000:0000:0000:402a:2487:41ae:8085%16
      
      The longest address with have 32 characters
      Notice that the :: is just dropping the 0000 sections
    
**    

    Network Architectures
    ---------------------
    To keep networks separate and protected
    
    
    Network Types
    -------------
    Geographical 
    - LAN (Local Area Network)
    - VLAN (Virtual Local Area Network)
    - WAN (Wide Area Network)
    - MAN (Metropolitan Area Network)


    Isolation
    ---------
    To separate externally accessible systems from those that are strictly internal
    using a DMZ (Demilitarized Zone) where untrusted systems can be installed like
    Web Servers and EmailGateways. This can be controlled using a firewall.
    
    
    Remote Access
    -------------
    VPN (Virtual Private Networks) using Web Browsers
    
    
    Cloud Computing
    ---------------
    - Storage as a Service
      Google, Apple to store:
      Backups, photos, documents, music
      
    - Infrastructure as a Service
      To avoid spending a lot of money on Hardware and maintenance
      
    - Platform as a Service
      Databases, saves money on software, know how, licensing, installation
      
    - Software as a Service
      Google Docs, Office online
     
    Internet of Things
    ------------------
    Devices that have embedded software and network access, anything that can be reached
    over a network and does NOT have a built-in screen or Keyboard to provide a user with
    the ability of interaction, is part of the IoT (Internet of Things)     
    - Refrigerators 
    - Smart Home Controls Automation
    - Wearable Health Monitors
    - Smart Cars
    - GPS for cars, cell phones
    
     

    
    


===================
Chapter  3
Chapter  4
Chapter  5
Chapter  6
Chapter  7
Chapter  8
Chapter  9
Chapter 10
Chapter 11
Chapter 12
Chapter 13
Chapter 14
Chapter 15





***here

- Introduction to Ethical Hacking, questions page 36, answers page 526

- System Fundamentals, questions page 66, answers page 527
- Footprinting, questions page 123, answers 529
- Scanning
- Technologies at Risk of being Hacked

- PenTesting Rules
  - Always get written permision with detailed instructions and parameters, 
    before starting the pent test.
    Operating without a contract is STUPID and ILLEGAL, it will end your career

  - If you find private and confidential information make sure, in writting,
    to know WHOM you can TALK about it.
  
    According to the International Council of Electronic Commerce Consultants 
    (EC-Council) you as a CEH must keep all found information PRIVATE. 
    It can NOT be SOLD, TRANSFERED or GIVEN to ANYBODY.
    (user names, passwords, email name, tel, ss, etc)
           
  - Be Honest and Forthright. Provide service in your area of COMPETANCE ONLY.
    Acknoledge your limitations.

  - NEVER use private software

  - DO NOT engage in bribery, double billing or any dishonest practice

  - Use the owners property, ONLY when authorized


  - Ensure good management of the project. "Flow charts", time schedules, 
    full risk disclosure

  - Do not associate with bad hackers

  - Never compromise your clients systems

  - ADD to your knowledge with CONSTANT study. Share knowledge with othe CEH members


- PENTESTS Types
  - A Black-Box: When the Pentester does NOT have knowledge of the target, 
    simulating a Hacker attack

  - A Gray-Box:  Limited target knowledge such an ip address, OS type, 
    network enviroment, but that information is limited. 
    This type of information could be accessable to someone on the inside, 
    but not always all of it.

  - A White-Box: Pentester will have complete information about system. 
    This is usually done for audits of sysmtems.

- Introduction to Ethical Hacking, questions page 36, answers page 526
- System Fundamentals, questions page 66, answers page 527
- Footprinting, questions page 123, answers 529
- Scanning
- Legal Responsibilities
- Cyber Security Areas
- Jobs Available, Government and Private Opportunities
- Cyber Attacks:
  - Denial of Service (DOS)
  - Manipulation of Stock Prices, School Grades. etc (Games, HamShl and CoX)
  - Identity Theft (Bank of America)
  - Vandalism
  - Credit Card Theft
  - Piracy (eBooks, Music, Software)
  - Theft of Service (Cel, TV, Electricity, Water)
  - Control automobiles: start, stop, ac, microphones, gps etc
  - Email Phishing
  - Stealing usernames and password (1234, password)
  - Network Intrusion.Getting into a network without permission
  - Social Engineering. Exploiting a system by going after the weakest point:
    A HUMAN BEING, open cpu, 
  - Posting and/or trasmitting illegal material (pdf books)
  - Extracting information for financial gain or cause damage, 
    Social Securities, Credit Cards, Pin Numbers, etc
  - Software Piracy
  - Dumpster Diving, getting discarded or left insecure information         
  - Malware, such as viruces, adware, spyware, etc
  - Unauthorized destruction or alteration of information, without permission
  - Financial fraud, redirection of funds
  - Denial of Service (DoS) and Distibuted denial of Service (DDoS) attacks are
    ways to oveload a system's resources to prevent it to provide services to legtime users
  - Ramsonware. One a systems is accessed, data is encrypted and users can not use it and 
    user most paid an amount of money to get their dat back
- Implementing Correction Actions
  Using a combination of Technology, Administrative, Physical and many others actions:
  clients implement, or not, Correction Actions, as follows:
  - Technology 
    - VPN (Virtual Private Networks) One to One, Many to One, One to Many
    - Cryptographic protocols, (CIA Director 1200 times could not access in 2017)
      Encrypting data before transmiting
    - IDS (Intruction Detection Systems)
    - IPS (Intrusion Prevention Systems) 
    - ACL (Access Control Lists)
      A set of rules applied to inbound traffic that specifies whether the contents of a 
      given field should be allow or prevent access to a network
      
      ACLs: DACL (Discretionary Access Control) and  
            SACL (System Access Control)
      
    - ACE (Access Control Entries) Is a list of access control entries
      Each ACL in an ACE identifies a trustee and specifies the access rights allowed,
      denied, or audited for that trustee. 
     
  - Administrative 
    - Company Policies
    - Procedures
    - and many other rules like log-out when leaving work area

  - Physical        
    Cable Locks
    Device Locks
    Alarms etc

or any other topic covered in class


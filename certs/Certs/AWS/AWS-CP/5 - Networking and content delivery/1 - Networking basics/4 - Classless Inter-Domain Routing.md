A common method to describe networks is Classless Inter-Domain Routing (CIDR). The CIDR address is expressed as follows:
- An IP address (which is the first address of the network)
- Next, a slash character (/)
- Finally, a number that tells you how many bits of the routing prefix must be fixed or allocated for the network identifier

The bits that are not fixed are allowed to change. CIDR is a way to express a group of IP addresses that are consecutive to each other. 

In this example, the CIDR address is 192.0.2.0/24. The last number (24) tells you that the first 24 bits must be fixed. The last 8 bits are flexible, which means that 28(or 256) IP addresses are available for the network, which rangefrom 192.0.2.0 to 192.0.2.255. The fourth decimal digit is allowed to change from 0 to 255. 

If the CIDR was 192.0.2.0/16, the last number (16) tells you that the first 16 bits must be fixed. The last 16 bits are flexible, which means that 216(or 65,536) IP addresses are available for the network, ranging from 192.0.0.0 to 192.0.255.255. The third and fourth decimal digits can each change from 0 to 255.

There are two special cases:
•Fixed IP addresses, in which every bit is fixed, represent a single IP address (for example, *192.0.2.0/32*). This type of address is helpful when you want to set up a firewall rule and give access to a specific host. 
•The internet, in which every bit is flexible, is represented as 0.0.0.0/0

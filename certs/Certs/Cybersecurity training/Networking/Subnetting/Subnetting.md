**Subnetting** is the subdivision of a network into logical groups called subnets
- network inside a network
- makes the network more efficient
	- If devices on the same subnet communicate with each other, the switch changes the transmissions to stay on the same subnet, improving speed and efficiency of the communications.
- can also be used to create security zones
- **Classless Inter-Domain Routing notation for subnetting (CIDR)**
	- method of assigning subnet masks to IP addresses to create a subnet
	- Classless addressing replaces classful addressing
		- classlful
			- Classful addressing was used in the 1980s as a system of grouping IP addresses into classes (Class A to Class E). Each class included a limited number of IP addresses, which were depleted as the number of devices connecting to the internet outgrew the classful range in the 1990s

		- classless
			- Classless CIDR addressing expanded the number of available [[IPv4]] addresses.
	- allows cybersecurity professionals to segment classful networks into smaller chunks
	- formatted like [[IPv4]] addresses, but they include a slash (“/’”) followed by a number at the end of the address, This extra number is called the IP network prefix.
		- 198.51.100.0 ([[IPv4]])
		- vs
		- 198.51.100.0/24
			- encompasses all IP addresses between 198.51.100.0 and 198.51.100.255
			- you can try converting CIDR to[[IPv4]] addresses and vice versa
	- reduces the number of entries in routing tables and provides more available IP addresses within networks

![[CIDR_cheatsheet.png]]
![[Pasted image 20231219044815.png]]
![[Pasted image 20231219050655.png]]
(mine!!)

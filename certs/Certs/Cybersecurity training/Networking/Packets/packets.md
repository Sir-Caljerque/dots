**data packet** - a basic unit of information that travels from one device to another within a network
* Header
	* Packets can have several headers depending on the protocols used such as an Ethernet header, an IP header, a TCP header, and more
	* ![[packet_header.png]]
* Payload
	* The payload component directly follows the header and contains the actual data being delivered.
* Footer
	* located at the end
	* The Ethernet protocol uses footers to provide error-checking information to determine if data has been corrupted.
	* *note* - Most protocols, such as the Internet Protocol (IP)[[TCP-IP]], _do not_ use footers.

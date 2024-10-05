3-way handshake
- SYN > SYN ACK > ACK
* 4 layers
	* **Network Access (data link) layer** 
		 ![[Pasted image 20231218141440.png]]
		* deals with the creation of data [[packets]] and their transmission across a network
		* Hubs, modems, cables, and wiring
		* Address Resolution Protocol (ARP)
			* assists IP with directing data packets on the same physical network by mapping IP addresses to MAC addresses on the same physical network.
	* **Internet (Network) Layer**
		![[Pasted image 20231218141848.png]]
		* responsible for ensuring the delivery to the destination host (can reside in different network)
		* ensures IP addresses are attached to data packets to indicate the location of the sender and receiver
		* determines which **protocol** is responsible for delivering the data packets and ensures the delivery to the destination host
			* **Internet Protocol (IP)**
				* sends the data packets to the correct destination and relies on the Transmission Control Protocol/User Datagram Protocol (TCP/UDP) to deliver them to the corresponding service. IP packets allow communication between two networks. They are routed from the sending network to the receiving network. The TCP/UDP retransmits any data that is lost or corrupt.
			* **Internet Control Message Protocol (ICMP)**
				* The ICMP shares error information and status updates of data packets. This is useful for detecting and troubleshooting network errors. The ICMP reports information about packets that were dropped or that disappeared in transit, issues with network connectivity, and packets redirected to other routers.
	* **Transport Layer**
		![[Pasted image 20231218141926.png]]
		* responsible for delivering data between two systems or networks and includes protocols to control the flow of traffic across a network.
		* **Transmission Control Protocol (TCP)**
			* allows two devices to form a connection and stream data. It ensures that data is reliably transmitted to the destination service
			* contains the port number of the intended destination service, which resides in the TCP header of a TCP/IP packet.
		* **User Datagram Protocol (UDP)**
			* connectionless protocol that does not establish a connection between devices before transmissions.
			* used by applications that are not concerned with the reliability of the transmission
			* Data sent over UDP is not tracked as extensively as data sent using TCP
			* Because UDP does not establish network connections, it is used mostly for performance sensitive applications that operate in real time, such as video streaming
	* **Application Layer**
		![[Pasted image 20231218142241.png]]
		* similar to the application, presentation, and session layers of the OSI model
		* application layer is responsible for making network requests or responding to requests
		* defines which internet services and applications any user can access
		* Protocols in the application layer determine how the data packets will interact with receiving devices
			* Hypertext transfer protocol (HTTP)
			* Simple mail transfer protocol (SMTP)
			* Secure shell (SSH)
			* File transfer protocol (FTP)
			* Domain name system (DNS)
* TCP/IP vs [[OSI]]
	* The TCP/IP model combines multiple layers of the OSI model. There are many similarities between the two models. Both models define standards for networking and divide the network communication process into different layers. The TCP/IP model is a simplified version of the OSI model.
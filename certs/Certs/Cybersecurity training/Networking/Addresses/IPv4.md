* 4 decimal numbers - 0-255
* 4.3 billion possible addresses
* 000.000.000.000
* 127.0.0.1 (self)
* the world had more devices than there are IPv4 addresses
	* the solution was [[IPv6]]

![[IPv4_header.png]]
see [[IPv6]] for differences

13 fields in an IPv4 [[packets]]:
* **Version (VER)**: This 4 bit component tells receiving devices what protocol the packet is using. The packet used in the illustration above is an IPv4 packet.
* **IP Header Length (HLEN or IHL):** HLEN is the packet’s header length. This value indicates where the packet header ends and the data segment begins
* **Type of Service (ToS):** Routers prioritize packets for delivery to maintain quality of service on the network. The ToS field provides the router with this information.
* **Total Length:** This field communicates the total length of the entire IP packet, including the header and data. The maximum size of an IPv4 packet is 65,535 bytes.
* **Identification:** For IPv4 packets that are larger than 65, 535 bytes, the packets are divided, or fragmented, into smaller IP packets. The identification field provides a unique identifier for all the fragments of the original IP packet so that they can be reassembled once they reach their destination.
* **Flags:** This field provides the routing device with more information about whether the original packet has been fragmented and if there are more fragments in transit.
* **Fragmentation Offset:** The fragment offset field tells routing devices where in the original packet the fragment belongs.
* **Time to Live (TTL):** TTL prevents data packets from being forwarded by routers indefinitely. It contains a counter that is set by the source. The counter is decremented by one as it passes through each router along its path. When the TTL counter reaches zero, the router currently holding the packet will discard the packet and return an ICMP Time Exceeded error message to the sender.
* **Protocol:** The protocol field tells the receiving device which protocol will be used for the data portion of the packet.
* **Header Checksum:** The header checksum field contains a checksum that can be used to detect corruption of the IP header in transit. Corrupted packets are discarded.
* **Source IP Address:** The source IP address is the IPv4 address of the sending device.
* **Destination IP Address:** The destination IP address is the IPv4 address of the destination device.
* **Options:** The options field allows for security options to be applied to the packet if the HLEN value is greater than five. The field communicates these options to the routing devices.
![[Pasted image 20240410102348.png]]

When you create a subnet, it requires its own CIDR block. For each CIDR block that you specify, AWS reserves five IP addresses within that block, and you cannot use these five addresses. AWS reserves these IP addresses for the following purposes:
- Network address
- VPC local router (internal communication)
- Domain Name System (DNS) resolution
- Future use
- Network broadcast address

For example, suppose that you create a subnet with an IPv4 CIDR block of 10.0.0.0/24, which has 256 total IP addresses. The subnet has 256 IP addresses, but only 251 are available because 5 are reserved for AWS.
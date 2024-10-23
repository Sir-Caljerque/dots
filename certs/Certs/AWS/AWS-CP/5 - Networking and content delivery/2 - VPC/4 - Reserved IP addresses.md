> [!Example]
>  A VPC with an IPv4 CIDR block of 10.0.0.0/16 has 65,536 total IP addresses.The VPC has four equal-sized subnets. Only 251 IP addresses are available for use by each subnet.
>  ![[Pasted image 20240812164609.png]]

When you create a subnet, it requires its own CIDR block. For each CIDR block that you specify, AWS reserves five IP addresses within that block, and theseaddresses are not available for use. AWS reserves these IP addresses for:
- Network address
- VPC local router (internal communications)
- Domain Name System (DNS) resolution
- Future use
- Network broadcast address

For example, suppose that you create a subnet with an IPv4 CIDR block of 10.0.0.0/24 (which has 256 total IP addresses). The subnet has 256 IP addresses, but only 251 are available because five are reserved.

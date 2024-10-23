![[Pasted image 20240410094847.png]]

-- Diagram of a VPC with a public subnet and a private subnet. An EC2 instance in the private subnet routes traffic to a private route table, and then to a NAT gateway in the public subnet. From there, the traffic is routed to a public route table and then to an internet gateway. --

- All subnets consist of a contiguous range of IP addresses. These addresses should not overlap with other subnets in your VPC
- Interfaces that are attached to EX2 instances in private subnets are not reachable from outside the parent VPC. However, by using an AWS managed NAT gateway, EC2 instances can make outbound requests, such as for patching, and the response from the external resource will be allowed back in.
- Private subnets are often used to host database (DB) instances that don't need to be accessed through the public internet.
- A NAT gateway must have an Elastic IP address assigned to it.

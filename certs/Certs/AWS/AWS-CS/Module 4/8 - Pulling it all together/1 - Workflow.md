![[Pasted image 20240419164014.png]]

The diagram on this slide shows how load balancing and VPC components work together.

A VPC has 2 subnets. Subnet A, which is a public subnet, contains 2 EC2 instances. Traffic from each instance routes through a load balancer to a security group, and then to a network ACL. Traffic then routes through a route table to an internet gateway

Subnet B, which is  a private subnet, contains 2 EC2 instances. Traffic from eaach instance routes through a load balancer to a sec. group, and then to a network ACL. Traffic the routes through a route table to a NAT gateway in subnet A, the public subnet.
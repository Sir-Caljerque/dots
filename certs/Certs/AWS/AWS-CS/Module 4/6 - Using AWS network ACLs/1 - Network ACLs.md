![[Pasted image 20240417135112.png]]

-- Diagram showing how network ACLs work. A VPC contains a public subnet and a private subnet. Each subnet contains an EC2 instance. A network ACL in each subnet controls traffic to and from the instances --

A *network access control list (ACL)* is an potional layer of security for your VPC. A network ACL acts as a firewall to control traffic in and out of one or more subnets. To add another layer of security to your VPC, you can set up network ACLs with rules that are similar to your security group rules.

Each subnet ib your VPC must be associated with a network ACL. If you dont explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL. You can associate a network ACL with multiple subnets; however, a subnet can be associated with only 1 network ACL at a time. When you associate a network ACL with a subnet, the previous association is removed.
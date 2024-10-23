![[Pasted image 20240410104448.png]]
-- Diagram of a VPC with a public subnet and a private subnet. The public subnet contains an EC2 instance that is protected by security group 1. The private subnet contains an Amazon Relational Database Service (Amazon RDS) database instance that is protected by security group 2. Communication is allowed between the two security groups, and the internet can communicate with security group 1. --

A *security group* acts as a virtual firewall for an EC2 instance, and controls inbound and outbound traffic for the instance. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups.

At the most basic level, a security group is a way to filter traffic to your instances.
![[Pasted image 20240410104035.png]]
-- Diagram of a VPC with public and private route tables. The public subnet contains an EC2 instance and a NAT gateway. The NAT gateway directs traffic to a public route table and then to an internet gateway. The private subnet contains an EC2 instance whose traffic goes to a private route table. From there, traffic is directed to the NAT gateway in the public subnet. --

A *route table* contains a set of rules ( called *routes*) that direct network traffic from your subnet. Each route specifies a destination and a target. The destination is the destination CIDR block where you want traffic from your subnet to go. The target is the target that the destination traffic is sent through. A routing table is a simple lookup table that keeps track of paths, like a map, and uses these to determine which way to forward traffic.

By default, every route table that you create contains a local route for communication within the VPC. You cannot delete the local route entry, which is used for internal communications. But you can customize a route table by adding routes.

Each subnet should have its own route table, or it will use the main route table of the parent VPC (which controls the routing for all subnets that are not explicitly associated with any other route table).

The main route table is the route table that is automatically assigned to your VPC. The main route table controls the routing for all subnets that are not explicitly associated with any other route table. A subnet can be associated with only one route table at a time, but you can associate multiple subnets with the same route table.

For more information, see Configure Route Tables in the Amazon VPC User Guide at
https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html.
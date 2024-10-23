![[Pasted image 20240410101648.png]]

IP addresses enable resources in your VPC to communicate with each other and with resources over the internet. When you create a VPC, you assign a Classless Inter-Domain Routing (CIDR) range to it, which is a range of private addresses.

The CIDR block might be as large as /16 (which is 2<sup>16</sup>, or 65,536 addresses) or as small as /28 (which is 2<sup>4</sup>, or 16 addresses).

The CIDR block of a subnet can be the same as the block for the VPC that the subnet is in. This means that the VPC and subnet are the same size; the VPC has a single subnet.

The CIDR block of a subnet can be a subset of the CIDR block for the VPC. This structure supports the definition of multiple subnets. If you create more than one subnet in a VPC, the CIDR ranges of the subnets should not overlap. You cannot have duplicate IP addresses in the same VPC.

For more information, see VPC Sizing in the Amazon VPC User Guide at https://docs.aws.amazon.com/vpc/latest/userguide/configure-your-vpc.html#vpc-sizing.
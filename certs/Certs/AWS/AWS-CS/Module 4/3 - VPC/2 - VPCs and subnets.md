# VPCs and subnets
![[Pasted image 20240410093227.png]]
-- Diagram of subnets in a VPC. A Region within the AWS Cloud has one VPC, which spreads across two Availability Zones. The VPC has one subnet in each Availability Zone. --

A *VPC* is a virtual network that is logically isolated from other virtual networks in the AWS Cloud. A VPC is dedicated to your account, belongs to a single AWS Region, and can span multiple Availability Zones.

After you create a VPC, you can divide it into one or more subnets. A subnet is a range of IP addresses that divide a VPC. Subnets belong to a single Availability Zone, but you can create subnets in different Availability Zones for high availability. Subnets are generally classified as public or private.
# VPC
Amazon Virtual Private Cloud (Amazon VPC) is a service that lets you provision a logically isolated section of the AWS Cloud (called a virtual private cloud, or VPC) where you can launch your AWS resources.

Amazon VPC gives you control over your virtual networking resources, including the selection of your own IP address range, the creation of subnets, and the configuration of route tables and network gateways. You can use both IPv4 and IPv6 in your VPC for secure access to resources and applications.

You can also customize the network configuration for your VPC. For example, you can create a public subnet for your web servers that can access the public internet. You can place your backend systems (such as databases or application servers) in a private subnet with no public internet access.

Finally, you can use multiple layers of security, including security groups and network access control lists (network ACLs), to help control access to Amazon Elastic Compute Cloud (Amazon EC2) instances in each subnet.

# VPCs and subnets

- VPCs:
    - Logically isolated from other VPCs
    - Dedicated to your AWS account
    - Belong to a single AWS Region and can span multiple Availability Zones
- Subnets:
    - Range of IP addresses that divide a VPC
    - Belong to a single Availability Zone
    - Classified as public or private

Amazon VPC enables you to provision virtual private clouds (VPCs). A VPC is a virtual network that is logically isolated from other virtual networks in the AWS Cloud. A VPC is dedicated to your account. VPCs belong to a single AWS Region and can span multiple Availability Zones.

After you create a VPC, you can divide it into one or more subnets. A subnet is a range of IP addresses in a VPC. Subnets belong to a single Availability Zone. You can create subnets in different Availability Zones for high availability. Subnets are generally classified as public or private. Public subnets have direct access to the internet, but private subnets do not.

# IP addressing

- When you create a VPC, you assign it to an IPv4 CIDR block (range of private IPv4 addresses).
- You cannot change the address range after you create the VPC.
- The largest IPv4 CIDR block size is /16.
- The smallest IPv4 CIDR block size is /28.
- IPv6 is also supported (with a different block size limit).
- CIDR blocks of subnets cannot overlap.

IP addresses enable resources in your VPC to communicate with each other and with resources over the internet. When you create a VPC, you assign an IPv4 CIDR block (a range of private IPv4 addresses) to it. After you create a VPC, you cannot change the address range, so it is important that you choose it carefully. The IPv4 CIDR block might be as large as /16 (which is 216, or 65,536 addresses) or as small as /28 (which is 24, or 16 addresses).

You can optionally associate an IPv6 CIDR block with your VPC and subnets, and assign IPv6 addresses from that block to the resources in your VPC. IPv6 CIDR blocks have a different block size limit.

The CIDR block of a subnet can be the same as the CIDR block for a VPC. In this case,the VPC and the subnet are the same size (a single subnet in the VPC). Also, the CIDR block of a subnet can be a subset of the CIDR block for the VPC. This structure enables the definition of multiple subnets. If you create more than one subnet in a VPC, the CIDR blocks of the subnets cannot overlap. You cannot have duplicate IP addresses in the same VPC.

To learn more about IP addressing in a VPC, see the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html.

# Reserved IP addresses

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

# Public IP address types

| Public IPv4 address                                                                           | Elastic IP address                    |
| --------------------------------------------------------------------------------------------- | ------------------------------------- |
| Manually assigned through an elastic IP address                                               | Assosiated with an AWS account        |
| Automatically assigned through the auto-assign public IP address settings at the subnet level | Can be allocated and remapped anytime |
|                                                                                               | Additional costs might apply          |

When you create a VPC, every instance in that VPC gets a private IP address automatically. You can also request a public IP address to be assigned when you create the instance by modifying 
the subnet’s auto-assign public IP address properties.

An *Elastic IP address* is a static and public IPv4 address that is designed for dynamic cloud computing. You can associate an Elastic IP address with any instance or network interface for any VPC in your account. With an Elastic IP address, you can mask the failure of an instance by rapidly remapping the address to another instance in your VPC. 

Associating the Elastic IP address with the network interface has an advantage over associating it directly with the instance. You can move all of the attributes of the network interface from one instance to another in a single step. Additional costs might apply when you use Elastic IP addresses, so it is important to release them when you no longer need them.

To learn more about Elastic IP addresses, see Elastic IP Addresses in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html.

# Elastic network interface
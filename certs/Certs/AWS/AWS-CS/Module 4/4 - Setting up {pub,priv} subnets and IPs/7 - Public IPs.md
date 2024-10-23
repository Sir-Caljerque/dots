![[Pasted image 20240410103507.png]]

When you create a VPC, every instance in that VPC gets a private IP address automatically. You can also request a public IP address to be assigned when you create the instance by modifying the subnet’s auto-assign public IP address properties. A public IP address is used to access the internet.

Public IP addresses are dynamic. If you stop or start your instance, a new public IP is assigned. For production projects, use an Elastic IP address rather than an assigned public IP, which will be dissociated if you stop the instance.

For more information, see Public IPv4 Addresses in the Amazon VPC User Guide at
https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html#vpc-public-ipv4-addresses.
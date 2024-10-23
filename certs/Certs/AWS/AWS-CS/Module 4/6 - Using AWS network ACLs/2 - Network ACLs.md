![[Pasted image 20240417135630.png]]

A network ACL has separate inbound and outbound rules, and each rule can either allow or deny traffic. Network ACLs are stateless, which means that responses to inbound traffic are subjected to the rules for the outbound traffic (and vice versa)

Your VPC automatically comes with a modifiable default network ACL. By defaul, it allows all invound and outbound IPv4 traffic and, if applicable, IPv6 traffic. The table shows a default network ACL for a VPC that suppprts IPv4 only

You can create a custom network ACL and associate it with a subnet. By default, each custom network ACL denies all inbound and outbound traffic until you add rules

Rules are evaluated in number orfer before a decision is made to allow traffic

Each network ACL also includes a rule whose number is an asterisk. This rule ensures that if a packet doesnt match any of the other numbered rules, its denied. You cant modify or remove this rule.

For more information, see Control Traffic to Subnets Using Network ACLs in the Amazon VPC User Guide at
https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html
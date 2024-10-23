# Security groups

![[Pasted image 20240812172226.png]]

A _security group_ acts as a virtual firewall for your instance, and it controls inbound and outbound traffic. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups. At the most basic level, a security group is a way for you to filter traffic to your instances.

- Security groups have rules that control inbound and outbound traffic
- Default security groups deny all inbound traffic and allow outbound traffic
- Security groups are stateful

## Inbound

| Source      | Protocol | Port range | Desc                                                                              |
| ----------- | -------- | ---------- | --------------------------------------------------------------------------------- |
| sg-xxxxxxxx | All      | All        | Allow inbound traffic from network interfaces assigned to the same security group |

## Outbound

| Source    | Protocol | Port range | Desc                            |
| --------- | -------- | ---------- | ------------------------------- |
| 0.0.0.0/0 | All      | All        | Allow all outbound IPv4 traffic |
| ::/0      | All      | All        | Allow all outbout IPv6 traffic  |

Security groups have *rules* that control the inbound and outbound traffic. When you create a security group, it has no inbound rules. Therefore, _no inbound traffic that originates from another host to your instance is allowed_ until you add inbound rules to the security group. By default, a security group includes an outbound rule that _allows all outbound traffic_. You can remove the rule and add outbound rules that allow specific outbound traffic only. If your security group has no outbound rules, no outbound traffic that originates from your instance is allowed.

Security groups are _stateful_, which means that state information is kept even after a request is processed. Thus,ifyou send a request from your instance, the response traffic for that request is allowed to flow in regardless of inbound security group rules. Responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.

## Custom security group examples

### Inbound

| Source                                   | Protocol | Port Range | Desc                                                                                                |
| ---------------------------------------- | -------- | ---------- | --------------------------------------------------------------------------------------------------- |
| 0.0.0.0/0                                | TCP      | 80         | Allow inbound HTTP access from all IPv4 addresses                                                   |
| 0.0.0.0/0                                | TCP      | 443        | Allow inbound HTTPs access from all IPv4 addresses                                                  |
| Your network's public IPv4 address range | TCP      | 22         | Allow SSH access to linux instances from IPv4 addresses in your network (over the internet gateway) |

### Outbound

| Destination                                                                 | Protocol | Port Range | Description                                                                             |
| --------------------------------------------------------------------------- | -------- | ---------- | --------------------------------------------------------------------------------------- |
| The ID of the security group for your Microsoft SQL Server database servers | TCP      | 1433       | Allow outbound Microsoft SQL Server access to instances in the specified security group |

# Note
> [!NOTE]
> You can specify allow rules, but not deny rules
> All rules are evaluated before the decision to allow traffic

# Network Access Control Lists

![[Pasted image 20240812174110.png]]

A _network access control list (network ACL)_ is an optional layer of security for your Amazon VPC. It acts as a firewall for controlling traffic in and out of one or more subnets.To add another layer of security to your VPC, you can set up network ACLs with rules that are similar to your security groups.

Each subnet in your VPC must be associated with a network ACL. If you don't explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL. You can associate a network ACL with multiple subnets; however, a subnet can be associated with only one network ACL at a time. When you associate a network ACL with a subnet, the previous association is removed.

- A network ACL has _separate inbound and outbound rules_, and each rule can either allow or deny traffic.
- _Default_ network ACLs _allow_ all inbound and outbound IPv4 traffic
- Network ACLs are _stateless_

**Inbound**

| Rule | Type             | Protocol | Port Range | Source    | Allow/Deny |
| ---- | ---------------- | -------- | ---------- | --------- | ---------- |
| 100  | All IPv4 traffic | All      | All        | 0.0.0.0/0 | ALLOW      |
| \*   | All IPv4 traffic | All      | All        | 0.0.0.0/0 | DENY       |

**Outbound**

| Rule | Type             | Protocol | Port Range | Source    | Allow/Deny |
| ---- | ---------------- | -------- | ---------- | --------- | ---------- |
| 100  | All IPv4 traffic | All      | All        | 0.0.0.0/0 | ALLOW      |
| \*   | All IPv4 traffic | All      | All        | 0.0.0.0/0 | DENY       |

A network ACL has separate inbound and outbound rules, and each rule can either allow or deny traffic. Your VPC automatically comes with a modifiable default network ACL. By default, it allows all inbound and outbound IPv4 traffic and, if applicable, IPv6 traffic. The table shows a default network ACL.

Network ACLs are _stateless_, which means that no information about a request is maintained after a request is processed.

## Examples

- _Custom_ network ACLs *deny* all inbound and outbound traffic until you add rules.
- You can specify _both allow and deny_ rules.
- Rules are evaluated in number order, starting with the _lowest number_.

**Inbound**

| Rule | Type             | Protocol | Port Range | Source       | Allow/Deny |
| ---- | ---------------- | -------- | ---------- | ------------ | ---------- |
| 100  | HTTPS            | TCP      | 443        | 0.0.0.0/0    | ALLOW      |
| 120  | SSH              | TCP      | 22         | 192.0.2.0/24 | ALLOW      |
| \*   | All IPv4 traffic | All      | All        | 0.0.0.0/0    | DENY       |

**Outbound**

| Rule | Type             | Protocol | Port Range | Source       | Allow/Deny |
| ---- | ---------------- | -------- | ---------- | ------------ | ---------- |
| 100  | HTTPS            | TCP      | 443        | 0.0.0.0/0    | ALLOW      |
| 120  | SSH              | TCP      | 22         | 192.0.2.0/24 | ALLOW      |
| \*   | All IPv4 traffic | All      | All        | 0.0.0.0/0    | DENY       |

You can create a custom network ACL and associate it with a subnet. By default, each custom network ACL denies all inbound and outbound traffic until you add rules. 

A network ACL contains a numbered list of rules that are evaluated in order, starting with the lowest numbered rule. The purpose is to determine whether traffic is allowed in or out of any subnet that is associated with the network ACL. The highest number that you can use for a rule is 32,766. AWS recommends that you create rules in increments (for example, increments of 10 or 100) so that you can insert new rules where you need them later. 

For more information about network ACLs, see Network ACLs in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html.

# Key takeaways

The key takeaways from this section of the module are:
- Build security into your VPC architecture.
- Security groups and network ACLs are firewall options that you can use to secure your VPC.


![[Pasted image 20240812172226.png]]

A _security group_ acts as a virtual firewall for your instance, and it controls inbound and outbound traffic. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups. At the most basic level, a security group is a way for you to filter traffic to your instances.

- Security groups have rules that control inbound and outbound traffic
- Default security groups deny all inbound traffic and allow outbound traffic
- Security groups are stateful

# Inbound

| Source      | Protocol | Port range | Desc                                                                              |
| ----------- | -------- | ---------- | --------------------------------------------------------------------------------- |
| sg-xxxxxxxx | All      | All        | Allow inbound traffic from network interfaces assigned to the same security group |

# Outbound

| Source    | Protocol | Port range | Desc                            |
| --------- | -------- | ---------- | ------------------------------- |
| 0.0.0.0/0 | All      | All        | Allow all outbound IPv4 traffic |
| ::/0      | All      | All        | Allow all outbout IPv6 traffic  |

Security groups have *rules* that control the inbound and outbound traffic. When you create a security group, it has no inbound rules. Therefore, _no inbound traffic that originates from another host to your instance is allowed_ until you add inbound rules to the security group. By default, a security group includes an outbound rule that _allows all outbound traffic_. You can remove the rule and add outbound rules that allow specific outbound traffic only. If your security group has no outbound rules, no outbound traffic that originates from your instance is allowed.

Security groups are _stateful_, which means that state information is kept even after a request is processed. Thus,ifyou send a request from your instance, the response traffic for that request is allowed to flow in regardless of inbound security group rules. Responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.

# Custom security group examples

## Inbound

| Source                                   | Protocol | Port Range | Desc                                                                                                |
| ---------------------------------------- | -------- | ---------- | --------------------------------------------------------------------------------------------------- |
| 0.0.0.0/0                                | TCP      | 80         | Allow inbound HTTP access from all IPv4 addresses                                                   |
| 0.0.0.0/0                                | TCP      | 443        | Allow inbound HTTPs access from all IPv4 addresses                                                  |
| Your network's public IPv4 address range | TCP      | 22         | Allow SSH access to linux instances from IPv4 addresses in your network (over the internet gateway) |

## Outbound

| Destination                                                                 | Protocol | Port Range | Description                                                                             |
| --------------------------------------------------------------------------- | -------- | ---------- | --------------------------------------------------------------------------------------- |
| The ID of the security group for your Microsoft SQL Server database servers | TCP      | 1433       | Allow outbound Microsoft SQL Server access to instances in the specified security group |

# Note
> [!NOTE]
> You can specify allow rules, but not deny rules
> All rules are evaluated before the decision to allow traffic

**Amazon VPC** - youy can proivision *logically isolated* sections of the AWS cloud
- basically, a network in the cloud, you can launch subnets in different regions and availability zones
- you assign a CIDR block to each subnet you create
**Allows *Elastic IP addresses*, which unlike public IPv4 addresses, it can be allocated and remapperd anytime** (with additional cost)
An **elastic network interface** is essentially a moveable network that can be attatched to any instance
Route tables cannot be changed
- multiple VPCs can use 1 route table, but all VPCs need a route table

NACLs act as firewalls, as do security groups

---

**Amazon Route 53** is a DNS (Domain Name System) service
- manages traffic flows
- can improve availability and latency by rerouting the user to a different availability zone

---

**CloudFront** is a content delivery service that lowers latency when users browse to your applications
- It uses edge location
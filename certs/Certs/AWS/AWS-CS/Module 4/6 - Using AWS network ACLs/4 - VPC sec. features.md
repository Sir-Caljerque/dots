![[Pasted image 20240417140701.png]]

-- EC2 instance surrounded by layers of security. The closest layer to the instance is a security group. The next layer is network ACLs. The outside, and farthest layer, is subnet routing --

VPC security features include the following:
- Sec. groups act as virtual firewalls for your EC2 instances to control inbound and outbound traffic.
- Network ACLs provide an optional layer of security for your VPC. They act as firewalls to control traffic in and out of one or more subnets
- Subnets make networks more efficient. through subnetting, netwk traffic can travel a shorter distance without passing through unnecessary routers to reach its destination

With the VPC Flow Logs feature, you can capture info about the IP traffic going to and from network interfaces in your VPC. You can publish flow log data to Amazon CloudWatc Logs or Amazon Simple Storage Service (S3). After you create a flow log, you can retrieve and view its data in the chosen destination.

You can create a flow log for your VPC, subnet, or network interface. If you create a flow log for a subnet of VPC, each netwk interface is recorded as *flow log records*, which are log events consisting of fields that describe the traffic flow.

For more information, see Logging IP Traffic Using VPC Flow Logs in the Amazon VPC User Guide at 
https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html.
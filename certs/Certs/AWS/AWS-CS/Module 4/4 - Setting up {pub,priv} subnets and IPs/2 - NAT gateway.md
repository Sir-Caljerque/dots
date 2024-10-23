![[Pasted image 20240410094441.png]]

A *network address translation (NAT) gateway* supports instances in a private subnet to connect to the internet or other AWS services. A NAT gateway also prevents the internet from initiating a connection with those instances.

To create a NAT gateway, you must specify the public subnet in which the NAT gateway should reside. You must also specify an Elastic IP address to associate with the NAT gateway. After you create a NAT gateway, you must update the route table that is associated with one or more of your private subnets to point internet-bound traffic to the NAT gateway. Thus, instances in your private subnets can communicate with the internet.

You can also use a NAT instance in a public subnet in your VPC instead of a NAT gateway. However, a NAT gateway is a managed NAT service that provides better availability, higher bandwidth, and less administrative effort. For common use cases, AWS recommends that you use a NAT gateway instead of a NAT instance.

For more information, see the following topics in the Amazon VPC User Guide:
* NAT Gateways at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html
- NAT Instances at https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html
* Compare NAT Gateways and NAT Instances at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-comparison.html
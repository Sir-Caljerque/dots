![[Pasted image 20240812170243.png]]

A *network address translation (NAT) gateway* enables instances in a private subnet to connect to the internet or other AWS services, but prevents the internet from initiating a connection with those instances.

Tocreate a NAT gateway, you must specify the public subnet in which the NAT gateway shouild reside. You must also specify an Elastic IP address to associate with the NAT gateway when you create it. After you createa NAT gateway, you must update the route table thatis associated with one or more of your private subnets to point internet-bound traffic to the NAT gateway. Thus, instances in your private subnets can communicate with the internet. 

You can also use a NAT instance in a public subnet in your VPC instead of a NAT gateway. However, a NAT gateway is a managed NAT service that provides better availability, higher bandwidth, and less administrative effort. For common use cases, AWS recommends that you use a NAT gateway instead of a NAT instance. 

See the AWS Documentation for more information about
- NAT gateways at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html.
- NAT instances at https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html.
- Differences between NAT gateways and NAT instances at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-comparison.html.

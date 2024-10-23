![[Pasted image 20240812170712.png]]

VPC sharing enables customers to share subnets with other  AWS accounts in the same organization in AWS Organizations. VPC sharing enables multiple AWS accounts to create their application resources—such as Amazon EC2 instances, Amazon Relational Database Service (Amazon RDS) databases, Amazon Redshift clusters, and AWS Lambda functions—into shared, centrally managed VPCs. In this model, the account that owns the VPC (owner) shares one or more subnets with other accounts (participants) that belong to the same organization in AWS Organizations. After a subnet is shared, the participants can view, create, modify, and delete their application resources in the subnets that are shared with them. Participants cannot view, modify, or delete resources that belong to other participants or the VPC owner. 

VPC sharing offers several benefits:
- Separation of duties –Centrally controlled VPC structure, routing, IP address allocation
- Ownership –Application owners continue to own resources, accounts, and security groups
- Security groups –VPC sharing participants can reference the security group IDs of each other
- Efficiencies –Higher density in subnets, efficient use of VPNs and AWS Direct Connect
- No hard limits –Hard limits can be avoided—for example, 50 virtual interfaces per AWS Direct Connect connection through simplified network architecture
- Optimized costs –Costs can be optimized through the reuse of NAT gateways, VPC interface endpoints, and intra-Availability Zone traffic

VPC sharing enables you to decouple accounts and networks. You have fewer, larger, centrally managed VPCs. Highly interconnected applications automatically benefit from this approach.

![[Pasted image 20240812170729.png]]

You can connect VPCs in your own AWS account, between AWS accounts, or between AWS regions

Restrictions:
- IP spaces cannot overlap
- Transitive peering is not supported
- you can only have one peering resource between the same two VPCs

A *VPC peering connection* is a networking connection between two VPCs that enables you to route traffic between them privately. Instances in either VPC can communicate with each other as if they are within the same network. You can create a VPC peering connection between your own VPCs, with a VPC in another AWS account, or with a VPC in a different AWS Region. 

When you set up the peering connection, you create rules in your route table to allow the VPCs to communicate with each other through the peering resource. For example, suppose that you have two VPCs. In the route table for VPC A, you set the destination to be the IP address of VPC B and the target to be the peering resource ID. In the route table for VPC B, you set the destination to be the IP address of VPC A and the target to be the peering resource ID.

VPC peering has some restrictions: 
- IP address ranges cannot overlap. 
- Transitive peering is not supported. For example, suppose that you have three VPCs: A, B, and C. VPC A is connected to VPC B, and VPC A is connected to VPC C. However, VPC B is notconnected to VPC C implicitly. To connect VPC B to VPC C, you must explicitly establish that connectivity. 
- You can only have one peering resource between the same two VPCs.

For more information about VPC peering, see VPC Peering in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-peering.html.

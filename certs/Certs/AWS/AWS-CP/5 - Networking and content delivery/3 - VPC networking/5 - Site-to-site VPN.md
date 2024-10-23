![[Pasted image 20240812171200.png]]

By default, instances that you launch into a VPC cannot communicate with a remote network. To connect your VPC to your remote network (that is, create a virtual private network or VPN connection), you:
1. Create a new virtual gateway device *(called a virtual private network (VPN) gateway)* and attach it to your VPC.
2. Define the configuration of the VPN device or the customer gateway. The customer gateway is not a device but an AWS resource that provides information to AWS about your VPN device.
3. Create a custom route table to point corporate data center-bound traffic to the VPN gateway. You also must update security group rules. (You will learn about security groups in the next section.)
4. Establish an AWS Site-to-Site VPN *(Site-to-Site VPN)* connection to link the two systems together.
5. Configure routing to pass traffic through the connection.

For more information about AWS Site-to-Site VPN and other VPN connectivity options, see VPN Connections in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/vpn-connections.html.

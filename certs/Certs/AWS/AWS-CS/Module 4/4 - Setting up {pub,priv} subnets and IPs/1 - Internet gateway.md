![[Pasted image 20240410094027.png]]

An internet gateway serves two purposes:
* Provides a target in your VPC route tables for internet-routable traffic
* Performs network address translation (NAT) for instances that have been assigned public IPv4 addresses

An internet gateway supports IPv4 and IPv6 traffic, and it doesn't cause availability risks or bandwidth constraints on your network traffic. There's no additional charge to have an internet gateway in your account.

To enable access to or from the internet for instances in a subnet in a VPC, you must do the following:
1. Create an internet gateway, and attach it to your VPC.
2. Add a route to your subnet's route table that directs internet-bound traffic to the internet gateway.
3. Confirm that each instance in your subnet has a globally unique IP address (public IPv4 address, Elastic IP address, or IPv6 address).
4. Confirm that your network ACL and security group rules allow the relevant traffic to flow to and from your instance.

For more information, see Connect to the Internet Using an Internet Gateway in the Amazon VPC User Guide at https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html.
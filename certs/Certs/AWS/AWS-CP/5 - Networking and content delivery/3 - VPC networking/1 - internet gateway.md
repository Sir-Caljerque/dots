![[Pasted image 20240812165754.png]]

An *internet gateway*  is a scalable, redundant, and highly available VPC component that allows communication between instances in your VPC and the internet An internet gateway serves two purposes: to provide a target in your VPC route tables for internet-routable traffic, and to perform network address translation for instances that were assigned public IPv4 addresses. 

To make a subnet public, you attach an internet gateway to your VPC and add a route to the route table to send non-local traffic through the internet gateway to the internet (0.0.0.0/0). 

For more information about internet gateways, see Internet Gateways in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html.

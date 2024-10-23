![[Pasted image 20240812171744.png]]

Two types of endpoints:
- Interfaceendpoints (powered by AWS PrivateLink)
- Gatewayendpoints (Amazon S3 and Amazon DynamoDB)

A *VPC endpoint*is a virtual device that enables you to privately connect your VPC to supported AWS services and VPC endpoint services that are powered by AWS PrivateLink. Connection to these services does not require an internet gateway, NAT device, VPN connection, or AWS Direct Connect connection. Instances in your VPC do not require public IP addresses to communicate with resources in the service. Traffic between your VPC and the other service does not leave the Amazon network. 

There are two types of VPC endpoints:
•An *interface VPC endpoint*(interface endpoint) enables you to connect to services that are powered by AWS PrivateLink. These services include some AWS services, services that are hosted by other AWS customers and AWS Partner Network (APN) Partners in their own VPCs (referred to as *endpoint services*), and supported AWS Marketplace APN Partner services. The owner of the service is the *service provider*, and you—as the principal who creates the interface endpoint—are the *service consumer*. You are charged for creating and using an interface endpoint to a service. Hourly usage rates and data processing rates apply. See the AWS Documentation for a list of supported interface endpoints and for more information about the example shown here at https://docs.aws.amazon.com/vpc/latest/privatelink/create-interface-endpoint.html.
•Gateway endpoints: The use of gateway endpoints incurs no additional charge. Standard charges for data transfer and resource usage apply. 

For more information about VPC endpoints, see VPC Endpoints in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/privatelink/concepts.html.

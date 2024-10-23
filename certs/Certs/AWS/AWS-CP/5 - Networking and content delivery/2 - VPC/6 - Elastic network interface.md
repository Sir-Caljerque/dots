- An elastic network interface is a virtual network interface that you can:
    - Attach to an instance.
    - Detach from the instance, and attach to another instance to redirect network traffic.
- Its attributes follow when it is reattached to a new instance.
- Each instance in your VPC has a default network interface that is assigned a private IPv4 address from the IPv4 address range of your VPC.
![[Pasted image 20240812165230.png]]

An *elastic network interface* is a virtual network interface that you can attach or detach from an instance in a VPC. A network interface's attributes follow it when it is reattached to another instance. When you move a network interface from one instance to another, network traffic is redirected to the new instance. 

Each instance in your VPC has a default network interface (the primary network interface) that is assigned a private IPv4 address from the IPv4 address range of your VPC. You cannot detach a primary network interface from an instance. You can create and attach an additional network interface to any instance in your VPC. The number of network interfaces you can attach varies by instance type. 

For more information about Elastic Network Interfaces, see the AWS Documentation at https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html.

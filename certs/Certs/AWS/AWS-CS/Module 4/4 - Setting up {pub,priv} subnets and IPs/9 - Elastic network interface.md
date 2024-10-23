![[Pasted image 20240410103908.png]]

An elastic network interface is a virtual network interface that you can attach or detach from an instance in a VPC. A network interface's attributes follow it when it's reattached to another instance. When you move a network interface from one instance to another, network traffic is redirected to the new instance.

Each instance in your VPC has a default network interface (the primary network interface), which can be assigned a private IPv4 address from your VPC's range. You cannot detach a primary network interface from an instance. You can create and attach an additional network interface to any instance in your VPC. The number of network interfaces that you can attach varies by instance type.

In certain circumstances, you can have two network interfaces on an EC2 instance, which is great for forensics. Associate the network interface to a forensic instance and start tracking the exploit
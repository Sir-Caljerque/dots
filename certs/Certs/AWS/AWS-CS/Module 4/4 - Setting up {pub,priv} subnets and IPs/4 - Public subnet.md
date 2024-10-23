![[Pasted image 20240410101025.png]]
-- Diagram of a VPC with a public subnet. Traffic from an EC2 instance in the subent goes to a public route and then to an internet gateway --

when external traffic needs to reach an interface, such as an EC2 instance, the interface requires the following:

- A public IP address must be assigned to an EX2 instance.
- The subnet's route must include an entry to the interface.

With these 2 factors in place, the subnet is determined to be a _public_ subnet

Often, companies will place web servers inside a public subnet, However, AWS recommends using a load balancer in the public subnet and having a load balancer relay traffic to web servers that are hosted in private subnets.


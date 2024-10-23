| Public IPv4 address                                                                           | Elastic IP address                    |
| --------------------------------------------------------------------------------------------- | ------------------------------------- |
| Manually assigned through an elastic IP address                                               | Assosiated with an AWS account        |
| Automatically assigned through the auto-assign public IP address settings at the subnet level | Can be allocated and remapped anytime |
|                                                                                               | Additional costs might apply          |

When you create a VPC, every instance in that VPC gets a private IP address automatically. You can also request a public IP address to be assigned when you create the instance by modifying 
the subnet’s auto-assign public IP address properties.

An *Elastic IP address* is a static and public IPv4 address that is designed for dynamic cloud computing. You can associate an Elastic IP address with any instance or network interface for any VPC in your account. With an Elastic IP address, you can mask the failure of an instance by rapidly remapping the address to another instance in your VPC. 

Associating the Elastic IP address with the network interface has an advantage over associating it directly with the instance. You can move all of the attributes of the network interface from one instance to another in a single step. Additional costs might apply when you use Elastic IP addresses, so it is important to release them when you no longer need them.

To learn more about Elastic IP addresses, see Elastic IP Addresses in the AWS Documentation at https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html.

![[Pasted image 20240410103712.png]]

An Elastic IP address is a static, public IP address that is designed for dynamic cloud computing. You can associate an Elastic IP address with any instance or network interface for any VPC in your account.

By using an Elastic IP address, you can mask the failure of an instance or software by rapidly remapping the address to another instance in your account. Alternatively, you can specify the Elastic IP address in a DNS record for your domain, so that your domain points to your instance.

If your instance doesn't have a public IPv4 address, you can associate an Elastic IP address with your instance to enable communication with the internet. For example, this allows you to connect to your instance from your local computer.

An Elastic IP address is static and doesn't change over time. It comes from Amazon's pool of IPv4 addresses or from a custom IP address pool that you have brought to your AWS account. If you unassign an Elastic IP address, you are charged until you remove it completely. Additional costs might apply when you use Elastic IP addresses, so it's important to release them when you no longer need them.

Elastic IP addresses get allocated to your account and stay the same. Use an Elastic IP address when you work on a long-term project and configuring IP addresses can be time-consuming.

For more information, seeAssociate Elastic IP Addresses with Resources in Your VPC in theAmazon VPC UserGuideat
https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html.
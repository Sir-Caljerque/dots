Some takeaways from this section of the module include the following:
- A network ACL is an optional layer of security for your VPC and acts as a firewall to control traffic at the subnet level.
- Each subnet in your VPC must be associated with a network ACL
- Network ACLs are stateless, which means that responses to inboud traffic are subject to the rules for outbound traffic (and vice versa)
- Rules are eval'd in number order before a decision is made to allow traffic
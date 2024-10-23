![[Pasted image 20240410104611.png]]

When you create a security group, it doesn't have any inbound rules. Therefore, inbound traffic that originates from another host to your instance isn't permitted until you add inbound rules to the security group.

By default, a security group includes an outbound rule that allows all outbound traffic. You can remove the rule and add outbound rules that allow specific outbound traffic only. If your security group doesn't have any outbound rules, then outbound traffic that originates from your instance isn't allowed.

Security groups are stateful , which means that state information is kept even after a request is processed. Thus, if you send a request from your instance, the response traffic for that request is allowed to flow in regardless of inbound security group rules. Responses to allowed inbound traffic are allowed to flow out, regardless of outbound rules.

*All* rules are evaluated before a decision is made to allow traffic.

The tables on the slide indicate that inbound traffic is allowed from any network interface assigned to the same security group. All outbound traffic is allowed.

For more information, see Control Traffic to Resources Using Security Groups in the Amazon VPC User Guide at
https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html.
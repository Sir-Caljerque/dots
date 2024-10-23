# 1
Intro

# 2
- We're going to start with the Shared responsibility model.
- AWS is not responsible for every aspect of security - which is where the shared responsibility model comes in
- as you can see here, AWS is responsible for the security of their infrastructure, and nothing that you put in it
- as you can see here (image)
- for example, if you decide to not use a firewall and an outdated operating system, and you get hacked, it is not AWS's fault, however, if one of AWS's data centers gets destroyed, and all your data with it, it IS AWS's fault
- in short, customers are responsible for security `in` the cloud while AWS is responsible for the security `of` the cloud

# 3
- IAM, or **Identity and Access Management** is  a tool that manages access to AWS resources, for example, you can regulate who can terminate EC2 instances
- you can manage which resources can be accessed by who, and how these Resources can be accessed.
- for privilege management, IAM has policies - which are [read] - that can be assigned to Users or groups to define their level of access, and **roles** usually for privilege escalation and AWS service requests

# 4
- in IAM, there are also Identity-based policies and Resource-based policies
- Identity-based policies are attatched to a user, group, or role, while Resource-based policies are attatched to a resource
- Policies include explicit allows and explicit denys, which take precedence over allows, and if an entity is not allowed or denied, it is assumed to be denied
- `Explain the picture`

# 5
just read the ppt

# 6
- there are many services that AWS provides that can be used to secure existing accounts such as [read 1 bullet]
- theres also[read rest]

# 7
there are 2 ways to protect data at rest:
- SSE and CSE
- [read ppt]
and 2 examples for data in transit:
- TLS/SSL
- HTTPS, like your browser

# 8
to enforce security, one must look at [first 3 bullets]
luckily, AWS offers some services suck as [rest] to help you
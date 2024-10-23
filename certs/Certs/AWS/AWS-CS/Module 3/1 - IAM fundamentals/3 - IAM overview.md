![[Pasted image 20240229102200.png]]

You can use IAM to control access to your AWS resources. You achieve this access control by creating users, groups, and roles. You can also enforce access control by attaching policies.

For IAM, these terms are defined as follows:
- An IAM user is an entity that you create in AWS to represent a person or application that interacts with AWS account services and resources. A user is given a permanent set of credentials, which stay with the user until a forced rotation occurs. With new AWS accounts, the root user account is the first IAM user account established.
- An IAM group is a collection of IAM users. You can use groups to grant the same set of permissions to multiple users.
- An IAM role is similar to a user in that it’s an AWS identity that you can attach permission policies to. These will determine what the identity can and can’t do in AWS. However, a role doesn’t have long-term credentials (such as a password or access keys) that are associated with it. Instead, when a person or application assumes a role, they are provided with temporary security credentials for the role session. IAM roles will be covered later in this module.
- An IAM policy is a document that explicitly lists permissions. The policy can be attached to an IAM user, an IAM group, an IAM role, or any combination of these resources. IAM policies will be discussed in more depth later in this this module.

To configure long-term access, a best practice is to attach IAM policies to IAM groups, and then assign IAM users to these IAM groups. An IAM user who is a member of an IAM group inherits the permissions that are attached to that group. You can also attach IAM policies directly to an IAM user to further customize the access that’s granted through the group
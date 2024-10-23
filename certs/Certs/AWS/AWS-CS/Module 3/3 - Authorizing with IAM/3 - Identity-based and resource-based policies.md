![[Pasted image 20240309163626.png]]

#Note: In the tables on the slide, N/A means not applicable because the policy doesn't specify permissions for that particular action.

To reiterate, two types of IAM policies can grant permissions: identity-based policies and resource-based policies. The difference between the two types of policies is a result of where they are applied, which depends on the type of access that you're authorizing or restricting.

Identity-based policies are attached to an IAM user, group, or role. They indicate what that identity can do. For example, you could grant a user the ability to access an Amazon DynamoDB table.

Resource-based policies are attached to a resource. They indicate what a specified user (or group of users) is permitted to do with the resource. For example, you can use resource-based policies to grant access to an S3 bucket or to grant cross-account access between two trusted AWS accounts.
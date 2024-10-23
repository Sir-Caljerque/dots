![[Pasted image 20240229104044.png]]

An IAM role is an IAM identity that provides the ability to define a specific set of permissions to access the resources that a user or service needs. An IAM role is similar to an IAM user in that you can attach permissions policies to it. However, you don't attach the permissions to an IAM user or group. Instead, you attach the permissions to a role, and the user or the service assumes the role as needed

When a user assumes a role, the user's prior permissions are temporarily forgotten. AWS returns temporary security credentials that the user or application can then use to make programmatic requests to AWS for the duration of the session. The AWS Security Token Service (AWS STS) issues the temporary security credentials.

When you use IAM roles, you don’t need to grant long-term security credentials to each entity that requires access to a resource.

For a service like Amazon EC2, applications or AWS services can programmatically assume a role at runtime. The principal that assumes the role might be an IAM user, group, or role from another AWS account, including accounts that you do not own.

The following example illustrates a situation when you might need to use temporary security credentials to provide a role for an EC2 instance:

1. An administrator creates the Get-pics role in IAM, defines a policy that grants access to an Amazon Simple Storage Service (Amazon S3) bucket named photos, and attaches the policy to the role.
2. An EC2 instance assumes the Get-pics role.
3. The EC2 instance is granted temporary permissions to access the S3 bucket named photos.
![[Pasted image 20240803070528.png]]
- An **IAM role**is an IAM identity with specific permissions
- Similar to an IAM user
    - Attach permissions policies to it
- Different from an IAM user 
    - Not uniquely associated with one person
    - Intended to be **assumable**by a *person*, *application*, or *service*
- Role provides **temporary**security credentials
- Examples of how IAM roles are used to **delegate**access –
    - Used by an IAM user in the same AWS account as the role 
    - Used by an AWS service—such as Amazon EC2—in the same account as the role
    - Used by an IAM user in a different AWS account than the role

An **IAM role**is an IAM identity you can create in your account that has specific permissions. An IAM role is **similar to an IAM user**becauseit is also an AWS identity that you can attach permissions policies to, and those permissions determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. Also, a role does not have standard long-term credentials such as a password or access keys associated with it. Instead, when you assume a role, the role provides you with temporary security credentials for your role session.

You can**use roles to delegate access to users, applications, or services**that do not normally have access to your AWS resources. For example, you might want to grant users in your AWS account access to resources they don't usually have, or grant users in one AWS account access to resources in another account. Or you might want to allow a mobile app to use AWS resources, but you do not want to embed AWS keys within the app (where the keys can be difficult to rotate and where users can potentially extract them and misuse them). Also, sometimes you may want to grant AWS access to users who already have identities that are defined outside of AWS, such as in your corporate directory. Or, you might want to grant access to your account to third parties so that they can perform an audit on your resources. 

For all of these example use cases, IAM roles are an essential component to implementing the cloud deployment.

# Example

## Scenario
An application that runs on an EC2 instance needs access to an S3 bucket

## Solution
- Define an IAM policy that grants access to S3 bucket
- Attatch the policy to a role
- Allow the EC2 instance to assume the role

In the diagram, a developer runs an application on an EC2 instance that requires access to the S3 bucket that is namedphotos. An administrator creates theIAM role and attaches the role to the EC2 instance. The role includes a permissions policy that grants read-only access to the specified S3 bucket. It also includes a trust policy that allows the EC2 instance to assume the role and retrieve the temporary credentials. When the application runs on the instance, it can use the role's temporary credentials to access the photosbucket. The administrator does not need to grant the application developer permission to access the photos bucket, and the developer never needs to share or manage credentials.

To learn more details about this example, see Using an IAM Role to Grant Permissions to Applications Running on Amazon EC2 Instances at https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html.

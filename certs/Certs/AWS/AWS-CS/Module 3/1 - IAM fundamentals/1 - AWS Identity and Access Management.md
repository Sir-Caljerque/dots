- Securely shares and controls individual and group access to your AWS resources
- Integrates with many other AWS services
- Supports federated identity management
- Supports granular permissions
- Supports MFA
- Provides identity information for assurance

IAM is a web service that helps you to securely control access to AWS resources. Use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.

IAM is integrated into most AWS services. You can define access controls from one place in the AWS Management Console, and they will take effect throughout your AWS environment

You can use IAM to grant users, groups, and applications granular access to the console and to AWS service application programming interfaces (APIs) by using existing identity systems. AWS supports federation from corporate systems such as Microsoft Active Directory and standards-based identity providers. This capability is beneficial when it comes to integrating new cloud deployments with existing on-premises infrastructure.

IAM also supports multi-factor authentication (MFA). If MFA is activated and an IAM user attempts to log in, then the user is prompted for an authentication code. The authentication code is delivered to a specially configured AWS MFA hardware device or to a software-based AWS MFA device, such as Google's Authenticator application

By using AWS CloudTrail, IAM can also support information assurance by providing log records that include the identity information of users that request resources in your account.
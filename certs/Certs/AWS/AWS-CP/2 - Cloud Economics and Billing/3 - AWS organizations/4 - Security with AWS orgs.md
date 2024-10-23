Control access with AWS Identity and Access Management (IAM).
IAM policiesenable you to allow or deny access to AWS services for users, groups, and roles.
Service control policies (SCPs) enable you to allow or deny access to AWS services for individuals or group accounts in an organizational unit (OU).

AWS Organizations does not replace associating **AWS Identity and Access Management (IAM)** policies with users, groups, and roles within an AWS account.

With IAM policies,you can allow or deny access to AWS services(such as Amazon S3), individual AWS resources(such as a specific S3 bucket), or individual API actions(such as s3:CreateBucket). An IAM policy can be applied only to IAM users, groups, or roles, and it can never restrict the AWS account root user.

In contrast, with Organizations, you use **service control policies (SCPs)** to allow or deny access to particular AWS services for individual AWS accounts or for groups of accounts in an OU. The specified actions from an attached SCP affect all IAM users, groups, and roles for an account, including the AWS account root user.

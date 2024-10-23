# 1 - Introducation to AWS organizations

AWS Organizations is a free account management service that enables you to consolidate multiple AWS accounts into anorganizationthat you create and centrally manage. AWS Organizations include consolidated billing and account management capabilities that help you to better meet the budgetary, security, and compliance needs of your business.

The main benefits of AWS Organizations are:
- Centrally managed access policies across multiple AWS accounts.
- Controlled access to AWS services.
- Automated AWS account creation and management.
- Consolidated billing across multiple AWS accounts.

# 2 - AWS Orgs terminology

![[Pasted image 20240802055312.png]]
Here is some terminology to understand the structure of AWS Organizations.

The diagram shows a basic organization, or root, that consists of seven accounts that are organized into four organizational units (or OUs). An OU is a container for accounts within a root. An OU can also contain other OUs.This structure enables you to create a hierarchy that looks like an upside-down tree with the root at the top.The branches consist of child OUsand they move downward until they end in accounts,which are like the leaves of the tree.

When you attach a policy to one of the nodes in the hierarchy, it flows down and it affects all the branches and leaves. This example organization has several policies that are attached to some of the OUs or are attached directly to accounts.

An OU can have only one parent and, currently, each account can be a member of exactly one OU. An account is a standard AWS account that contains your AWS resources. You can attach a policy to an account to apply controls to only that one account.

# 3 - Key features and benefits

AWS Organizations enablesyou to:
- Create service control policies (SCPs) that centrally control AWS services across multiple AWS accounts.
- Create groups of accounts and then attach policies to a group to ensure that the correct policies are applied across the accounts.
- Simplify account management by using application programming interfaces (APIs)to automate the creation and management of new AWS accounts.
- Simplify the billing process by setting up a single payment method for all the AWS accounts in your organization. With consolidated billing, you can see a combined view of charges that are incurred by all your accounts, andyou cantakeadvantage of pricing benefits from aggregated usage.Consolidated billing provides a central location to manage billing across all of your AWS accounts, and the ability to benefit from volume discounts.

# 4 - Security with AWS orgs

Control access with AWS Identity and Access Management (IAM).
IAM policiesenable you to allow or deny access to AWS services for users, groups, and roles.
Service control policies (SCPs) enable you to allow or deny access to AWS services for individuals or group accounts in an organizational unit (OU).

AWS Organizations does not replace associating **AWS Identity and Access Management (IAM)** policies with users, groups, and roles within an AWS account.

With IAM policies,you can allow or deny access to AWS services(such as Amazon S3), individual AWS resources(such as a specific S3 bucket), or individual API actions(such as s3:CreateBucket). An IAM policy can be applied only to IAM users, groups, or roles, and it can never restrict the AWS account root user.

In contrast, with Organizations, you use **service control policies (SCPs)** to allow or deny access to particular AWS services for individual AWS accounts or for groups of accounts in an OU. The specified actions from an attached SCP affect all IAM users, groups, and roles for an account, including the AWS account root user.

# 5 - Organizational setup

Keep in mind that this process assumes that you have access to two existing AWS accounts, and that you can sign in to each accountas an administrator.

Reviewthese steps forsetting up AWS Organizations:
- Step 1 is to create your organization with your current AWS account as the primary account. You also invite one AWS account to join your organization and create another account as a member account.
- Step 2 is to create two organizational units in your new organization and place the member accounts in those OUs.
- Step 3 is to create service control policies, which enable you to apply restrictions to what actions can be delegated to users and roles in the member accounts. A service control policy is a type of organization control policy. 
- Step 4 is to test your organization’s policies. Sign in as a user for each of the roles (such as OU1orOU2) and see how the service control policies impact account access. Alternatively, you can use the IAM policy simulator to test and troubleshoot IAM and resource-based policies that are attached to IAM users, groups, or roles in your AWS account.

To learn more about the IAM policy simulator, see the IAM policy simulator at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html.

# 6 - Limits of AWS orgs

There are restrictions on names that you can create in AWS Organizations,which includes names of accounts, OUs, roots, and policies.

Names must be composed of Unicode characters and not exceed 250 characters in length

AWS Organizations has several maximum and minimum values for entities

> [!NOTE]
> List of the AWS Organizations limits, including names, number of accounts (varies), number of roots (1), number of OUs(1,000), number of policies (1,000), max size of control policy document (5,120 bytes), max nesting of BUs (5 levels of BUs under a root), invitations sent per day (20), member accounts created concurrently (5), and entities to which you can attach a policy (unlimited)

# 7 - Accessing AWS Orgs

AWS Organizations can be managed through different interfaces.

The **AWS Management Console** is a browser-based interface that you can use to manage your organization and your AWS resources. You can perform any task in your organization by using the console.

**AWS Command Line Interface (AWS CLI) tools**enable you to issue commands at your system's command line to perform AWS Organizations tasks and AWS tasks. This method can be faster and more convenient than using the console.

You can use also **AWS software development kits (SDKs)** to handletasks such as cryptographically signing requests, managing errors, and retrying requests automatically.AWS SDKs consist of libraries and sample code for various programming languages and platforms,such as Java, Python, Ruby, .NET, iOS, and Android.

The **AWS Organizations HTTPS Query API** gives you programmatic access to AWS Organizations and AWS. You can use the API to issue HTTPS requests directly to the service. When you use the HTTPS API, you must include code to digitally sign requests by using your credentials.


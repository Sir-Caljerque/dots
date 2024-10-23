# 1 - Root vs IAM access

![[Pasted image 20240803071051.png]]

- **Best practice**: Do not use the AWS account root user except when necessary.
    - Access to the **account root user** requires logging in with the *email address* *(and* *password)* that you used to create the account.
- Example actions that can only be done with the account root user:
    - Update the account root user password
    - Change the AWS Support plan
    - Restore an IAM user's permissions
    - Change account settings (for example, contact information, allowed Regions)

When you first create an AWS account, you begin with a single sign-in identity that has complete access to all AWS services and resources in the account. This identity is called the **AWS account** **root user** and it is accessed by signing into the AWS Management Console with the email address and password that you used to create the account. AWS accountroot usershave (and retain) **full**access to all resources in the account. Therefore, AWS strongly recommends that you do not use account root user credentials for day-to-day interactions with the account.

Instead, AWS recommends that you use IAM to create additional users and assign permissions to these users, following the principle of least privilege. For example, if you require administrator-level permissions, you can create an IAM user, grant that user full access, and then use those credentials to interact with the account. Later, if you need to revoke or modify your permissions, you can delete or modify any policies that are associated with that IAM user. 

Additionally, if you have multiple users that require access to the account, you can create unique credentials for each user and define which user will have access to which resources. For example, you can create IAM users with read-only access to resources in your AWS account and distribute those credentials to users that require read access. You should avoid sharing the same credentials with multiple users. 

While the account root user should not be used for routine tasks, there are a few tasks that can only be accomplished by logging in as the account root user. A full list of these tasks is detailed on the Tasks that require root user credentials AWS documentation page at https://docs.aws.amazon.com/general/latest/gr/root-vs-iam.html#aws_tasks-that-require-root.

# 2 - Acct root user

# Step 1: Stop using the account root user as soon as possible.
    - The account root user has unrestricted access to all your resources.
- To stop using the account root user:
    1.While you are logged in as the account root user, create an IAM user for yourself. Save the access keys if needed.
    2.Create an IAM group, give it full administrator permissions, and add the IAM user to the group.
    3.Disable and remove your account root user access keys, if they exist.
    4.Enable a password policy for users. Copy the **IAM users sign-in link** from the IAM Dashboard page. Then, sign out as the account root user.
    5.Sign in with your new IAM user credentials. 
    6.Store your account root user credentials in a secure place. 

To view detailed instructions for how to set up your first IAM user and IAM group, see Creating Your First IAM Admin User and Group at https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html.

# 3 - MFA

# Step 2: Enable multi-factor authentication (MFA).
- Require MFA for your account root user and for all IAM users.
- You can also use MFA to control access to AWS service APIs.
- Options for retrieving the MFA token –
    - Virtual MFA-compliant applications:
        - Google Authenticator.
        - AuthyAuthenticator (Windows phone app).
    - U2F security key devices:
        - For example, YubiKey.
    - Hardware MFA options:
        - Key fob or display card offered by Gemalto.

Another recommended step for securing a new AWS account is to require multi-factor authentication (MFA) for the account root user login and for all other IAM user logins. You can also use MFA to control programmatic access.For details, see Configuring MFA-Protected API Access at https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_configure-api-require.html.

You have a few options for retrieving the MFA token that is needed to log in when MFA is enabled. Options include virtual MFA-compliant applications (such as Google Authenticator and AuthyAuthenticator), U2F security key devices, and hardware MFA options that provide a key fob or display card.

# 4 - CloudTrail

# Step 3: Use AWS CloudTrail.
- CloudTrail tracks user activity on your account.
    - Logs all API requests to resources in all supported services your account.
- Basic AWS CloudTrail event history is enabled by defaultand is free.
    - It contains all management event data on latest 90 days of account activity.
- To access CloudTrail –
    1.Log in to the AWS Management Consoleand choose the CloudTrailservice.
    2.Click Event historyto view, filter, and search the last 90 days of events.
- To enable logs beyond 90 days and enable specified event alerting, create a trail.
    1.From the CloudTrail Console trails page, click Create trail.
    2.Give it a name, apply it to all Regions, and create a new Amazon S3 bucket for log storage. 
    3.Configure access restrictions on the S3 bucket (for example, only admin users should have access).

AWS CloudTrail is a service that logs all API requests to resources in your account. In this way, it enables operational auditing on your account. 

AWS CloudTrail is enabled on account creation by default on all AWS accounts, and it keeps a record of the last 90 days of account management event activity. You can view and download the last 90 days of your account activity for create, modify, and deleteoperations of services that are supported by CloudTrail without needing to manually create another trail. See more on the supported services at https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-aws-service-specific-topics.html.

To enable CloudTrail log retention beyond the last 90 days and to enable alerting whenever specified events occur, create a new trail (which is described at a highlevel on the slide). For detailed step-by-step instructions about how to create a trail in AWS CloudTrail, see creating a trail in the AWS documentation at https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-create-a-trail-using-the-console-first-time.html.

# 5 - Billing reports

# Step 4: Enable a billingreport,such as the AWS Cost and Usage Report.
- Billing reports provide information about your use of AWS resources and estimated costs for that use. 
- AWS delivers the reports to an Amazon S3 bucket that you specify.
    - Report is updated at least once per day. 
- The AWS Cost and Usage Report tracks your AWS usage and provides estimated charges associated with your AWS account, either by the hour or by the day.

An additional recommended step for securing a new AWS account is to enable billing reports, such as the AWS Cost and Usage Report. Billing reports provide information about your use of AWS resources and estimated costs for that use. AWS delivers the reports to an Amazon S3 bucket that you specify and AWS updates the reports at least once per day. 

The AWS Cost and Usage Report tracks usage in the AWS account and provides estimated charges, either by the hour or by the day.

For details about how to create an AWS Cost and Usage Report, see the AWS Documentation at https://docs.aws.amazon.com/cur/latest/userguide/cur-create.html.

# 6 - Key takeaways

The key takeaways from this section of the module are all related to best practices for securing an AWS account. Those best practice recommendations include:
- Secure logins with multi-factor authentication (MFA).
- Delete account root user access keys.
- Create individual IAM users and grant permissions according to the principle of least privilege.
- Use groups to assign permissions to IAM users.
- Configure a strong password policy.
- Delegate using roles instead of sharing credentials.
- Monitor account activity using AWS CloudTrail.


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

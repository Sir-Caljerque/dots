![[Pasted image 20240229105843.png]]

In this scenario, your organization has created multiple AWS accounts to isolate your production environment from your development environment. Remember, an AWS account is a container for your AWS resources, so the production account and development account are essentially two completely separate environments. After testing an update within the development environment, you need to grant members of the Developers group temporary access to update the productionapp S3 bucket.

You take the following steps to grant this temporary access:
1. An administrator within the production account creates a role that grants the development account read/write access to the production account. To do this, you need to define a trust policy that specifies the development account as a principal. This will authorize users from the development account to assume the UpdateApp role (AWS account authentication).
2. Within the development account, an administrator grants members of the Developers group permissions to assume the UpdateApp role. Because this is a role, which is temporary, the Developers will be granted permissions to call AWS STS to provide a temporary security token. When this is complete, any IAM user that belongs to the Developers group will be allowed to assume the UpdateApp role as needed.
3. The user requests to assume the UpdateApp role through the console, API, or AWS CLI.
4. Upon receiving the role request, AWS STS returns temporary credentials to the requestor after verification is complete.
5. By using the temporary credentials that AWS STS provided, the user from the Developers group is permitted to update the productionapp bucket in the production account.
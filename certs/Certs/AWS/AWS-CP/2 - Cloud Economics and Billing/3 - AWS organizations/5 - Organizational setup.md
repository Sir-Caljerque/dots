Keep in mind that this process assumes that you have access to two existing AWS accounts, and that you can sign in to each accountas an administrator.

Reviewthese steps forsetting up AWS Organizations:
- Step 1 is to create your organization with your current AWS account as the primary account. You also invite one AWS account to join your organization and create another account as a member account.
- Step 2 is to create two organizational units in your new organization and place the member accounts in those OUs.
- Step 3 is to create service control policies, which enable you to apply restrictions to what actions can be delegated to users and roles in the member accounts. A service control policy is a type of organization control policy. 
- Step 4 is to test your organization’s policies. Sign in as a user for each of the roles (such as OU1orOU2) and see how the service control policies impact account access. Alternatively, you can use the IAM policy simulator to test and troubleshoot IAM and resource-based policies that are attached to IAM users, groups, or roles in your AWS account.

To learn more about the IAM policy simulator, see the IAM policy simulator at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html.

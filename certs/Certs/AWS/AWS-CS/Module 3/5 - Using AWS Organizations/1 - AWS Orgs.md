![[Pasted image 20240309171114.png]]

AWS Organizations is an account management service that you can use to create an organization where you can consolidate multiple accounts and centrally manage them. AWS Organizations provides centralized account creation and management, as well as consolidated billing capabilities. With these features, you can manage your security, compliance, and budgetary needs more efficiently. Organizations also provides the ability to hierarchically group your accounts in organizational units (OUs) and attach different access policies to each. This provides the ability to create and customize fine-grained policies, which you can target to a single OU or attach to multiple OUs. You can nest OUs within other OUs up to a depth of five levels, which helps you to structure your hierarchy as you prefer.

Another key feature of Organizations is the use of service control policies (SCPs) to specify the maximum permissions for member accounts in your organization. This helps you ensure that your accounts stay within your organization's access control guidelines. You cannot use SCPs to grant any permissions. They can only restrict access to a service, resource, or API action for any member account, user, or role that you determine. Any restrictions put in place by an SCP will remain in place even if the restricted actions are implicitly allowed elsewhere.

Organizations builds upon IAM by expanding the granular control that IAM provides to the account level. It does this by giving you control over what users and roles in an account or a group of accounts can do. This additional layer of control ensures that users can access only what both Organizations policies and IAM policies allow. If either service blocks an operation, the user will not be able to access that operation.

# **Example**
![[Pasted image 20240309171315.png]]

This SCP example prevents member accounts from leaving the organization. The effect of the policy statement is to explicitly deny the organizations:LeaveOrganization action, which prevents member accounts from leaving.
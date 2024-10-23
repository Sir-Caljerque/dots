- **AWS Organizations** enables you to consolidate multiple AWS accounts so that you centrally manage them.
- *Security features* of AWS Organizations:
    - **Group AWS accounts into organizational units**(OUs) and attach different access policies to each OU.
    - **Integration and support for IAM**
        - Permissions to a user are the intersection of what is allowed by AWS Organizations and what is granted by IAM in that account.
    - **Use service control policies**to establish control over the AWS services and API actions that each AWS account can access 

**AWS Organizations**is an account management service that enables you to consolidate multiple AWS accounts into anorganizationthat you create and centrally manage. Here, the focus is on the security features that AWS Organizations provides. 

One helpful security feature is that you can **group accounts into organizational units**(OUs) and attach different access policies to each OU. For example, if you have accounts that should only be allowed to access AWS services that meet certain regulatory requirements, you can put those accounts into one OU. You then can define a policy that blocks OU access to services that do not meet those regulatory requirements, and then attach thepolicy to the OU. 

Another security feature is that **AWS Organizations**integrates **with and supports IAM.** AWS Organizations expands that control to the account level by giving you control over what users and roles in an account or a group of accounts can do. The resulting permissions are the logical intersection of what is allowed by the AWS Organizations policy settings and what permissions are explicitly granted by IAM in the account for that user or role. The user can access only what is allowed byboththe AWS Organizations policies and IAM policies. 

Finally, AWS Organizations **provides service control policies (SCPs)** that enable you to specify the maximum permissions that member accounts in the organization can have. In SCPs, you can restrict which AWS services, resources, and individual actions the users and roles in each member account can access. **These restrictions even override the administrators of member accounts**. When AWS Organizations blocks access to a service, resource, or API action, a user or role in that account can't access it, even if an administrator of a member account explicitly grants such permissions.

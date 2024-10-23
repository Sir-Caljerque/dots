- Service control policies (SCPs) offer centralized control over accounts.
    - Limit permissions that are available in an account that is part of an organization.
- Ensures that accounts comply with access control guidelines.
- SCPs are similarto IAM permissions policies –
    - They use similar syntax.
    - However, an SCP never grants permissions. 
    - Instead, SCPs specify the maximum permissions for an organization.

Hereis a closer look at the **Service control policies (SCPs)** feature of AWS Organizations. 

SCPs offer central control over the **maximum available permissions**for all accounts in your organization, enabling you to ensure that your accounts stay in your organization’s access control guidelines. SCPs are available only in an organization that hasall features enabled, including consolidated billing. See more on enabling features at https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html. SCPs aren't available if your organization has enabled onlythe consolidated billing features. For instructions about enabling SCPs, seeEnabling and Disabling a Policy Type on a Root at https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root.

**SCPs are similar to IAM permissions policies**and they use almost the same syntax. However, an SCP never grants permissions. Instead, SCPs are JSON policies that specify the maximum permissions for an organization or OU. Attaching an SCP to the organization root or an organizational unit (OU) defines a safeguard for the actions that accounts in the organization root or OU can do. However, it is not a substitute for well-managed IAM configurations within each account.You must still attachIAM policiesto users and roles in your organization's accounts to actually grant permissions to them. See more on IAM policies at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html.

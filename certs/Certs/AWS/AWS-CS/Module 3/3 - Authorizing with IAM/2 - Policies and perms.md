![[Pasted image 20240309162902.png]]

Diagram of IAM group member receiving access from IAM policies and permissions. IAM group members are assigned full access to S3 bucket 1. IAM group members are also assigned read only access to S3 bucket 2. 

You can control access to your AWS resources by using IAM policies that grant or deny permissions. In this example, the users in the IAM group can read, write, and delete objects in bucket 1. However, they can only read the objects in bucket 2.

By default, an authenticated IAM user, group, or role can't access anything in your account until you grant them permissions. You grant permissions by creating a policy. Policies are objects that define permissions for the identity or resource they're associated with. Most policies are defined and stored in a JavaScript Object Notation (JSON) document. Policies define the effect, actions, resources, and optional conditions under which an entity can invoke API operations to the AWS account. By default, any actions or resources that are not explicitly allowed are denied. When an IAM principal (user or role) makes a request, AWS evaluates that request based on the permissions in these policies to determine whether access will be allowed or denied.

AWS currently supports six types of policies:
* **Identity-based policies:**** These policies are attached to IAM identities and grant permissions to the identity.
* **Resource-based policies:** These are attached to resources and grant permissions to the principal specified in the policy.
* **Permissions boundaries:** These define the maximum permissions that the identity-based policies can grant to an entity. Permissions boundaries do not grant permissions.
* **AWS Organizations service control policy (SCP):** This defines the maximum permissions for account members of an organization or organizational unit (OU). You can use SCPs to limit the permissions of identity-based or resource-based policies, but they cannot be used to grant permissions.
* **Access control lists (ACLs):** You can use an ACL to control which principals in other accounts can access the resource to which the ACL is attached. You cannot use an ACL to grant permissions to entities that reside within the same account. ACLs are the only policy type that doesn't use the JSON document format.
* **Session policies:** These are used with the AWS CLI or AWS API to create a temporary session for a role or federated user. You can use session policies to limit the permissions that a role or a user's identity-based policies grant to a session. Session policies limit permissions but cannot grant them.
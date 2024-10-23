![[Pasted image 20240803061245.png]]

- **An IAM policy is a document that defines permissions**
    - Enables fine-grained access control
- Two types of policies –identity-basedand resource-based
- **Identity-based**policies –
    - Attach a policy to any IAM entity
        - An *IAM user, an IAM group, or an IAM role*
    - Policies specify:
        - Actions that **may**be performed by the entity
        - Actions that **may not**be performed by the entity
    - A single policycan be attached to multiple entities
    - A single entitycan have multiple policiesattached to it
- **Resource-based** policies
    - Attached to a resource (such as an S3 bucket)

An IAM policy is a formal statement of permissions that will be granted to an entity. Policies can be attached to any IAM entity. Entities include users, groups, roles, or resources. For example, you can attach a policy to AWS resources that will block all requests that do not come from an approved Internet Protocol (IP) address range. Policies specify what actions are allowed, which resources to allow the actions on, and what the effect will be when the user requests access to the resources.

The order in which the policies are evaluated has no effect on the outcome of the evaluation. All policies are evaluated, and the result is always that the request is either allowed or denied. When there is a conflict, the most restrictive policy applies.

There are two types of IAM policies. **Identity-based policies** are permissions policies that you can attach to a principal (or identity) such as an IAM user, role, or group. These policies control what actions that identity can perform, on which resources, and under what conditions. Identity-based policies can be further categorized as:
- **Managed policies** – Standalone identity-based policies that you can attach to multiple users, groups, and roles in your AWS account
- **Inline policies** – Policies that you create and manage, and that are embedded directly into a single user group or role.

**Resource-based policies** are JSON policy documents that you attach to a resource, such as an S3 bucket. These policies control what actions a specified principal can perform on that resource, and under what conditions.

# Example
![[Pasted image 20240803061512.png]]

As mentioned previously, IAM policy documents are written in JSON.

The example IAM policy grants users access only to the following resources:
- The DynamoDB table whose name is represented by table-name.
- The AWS account's S3 bucket, whose name is represented by bucket-nameand all the objects that it contains.

The IAM policy also includes an explicit deny ("Effect":"Deny") element. The **NotResource**element helps to ensure that users cannot use any other DynamoDB or S3 actions or resources except the actions and resources that are specified in the policy—even if permissions have been granted in another policy. An explicit deny statement takes precedence over an allow statement.

How IAM determines permissions:
![[Pasted image 20240803064221.png]]

IAM policies enable you to fine-tune privileges that are granted to IAM users, groups, and roles. 

When IAMdetermines whether a permission is allowed, IAM first checks for the existence of any applicable **explicit denial policy**. If noexplicit denial exists, it then checks for any applicable **explicit allow policy**. If neither an explicit deny nor an explicit allow policy exists, IAM reverts to the default, which is to deny access. This process is referred to as an **implicit deny**. The user will be permitted to take the action only if the requested action is *not* explicitly denied and *is*explicitly allowed.

It can be difficult to figure out whether access to a resource will be granted to an IAM entity when you develop IAM policies. The IAM Policy Simulator at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.htmlis a useful tool for testing and troubleshooting IAM policies.

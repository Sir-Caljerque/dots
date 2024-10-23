![[Pasted image 20240309163838.png]]

Diagram showing that IAM policies are divided into two categories, managed and inline. Managed policies are then further divided into AWS managed policies and customer managed policies.

# IAM policies can be managed or inline

## **Manages policies**
* Managed policies are standalone, identity-based policies that you can attach to multiple users, groups, and roles.
* AWS managed policies are created and managed by AWS.
* Customer managed policies are created and managed by you.
* Managed policies provide several features, including the following:
	* Reusability
	* Central change management
	* Versioning and rollback
	* The ability to delegate permissions management to other users
* Managed policies also provide the use of permissions boundaries. This is an advanced feature that allows a managed policy to set the maximum permissions that an identity-based policy can grant to an IAM entity.

## **Inline policies**
* Inline policies are embedded in a principal entity such as a user, group, or role. That is, the policy is an inherent part of the entity.
* You can use the same policy for multiple entities, but those entities do not share the policy. Instead, each entity has its own copy of the policy, which makes it impossible to centrally manage inline policies.
* Inline policies are useful when you want to maintain a strict one-to-one relationship between a policy and the principal entity to which it is applied. This is because inline policies cannot be inadvertently attached to the wrong entity.

## Use cases will vary, and policies should be selected based on the situation. In most cases, AWS recommends the used of managed policies instead of inline policies.
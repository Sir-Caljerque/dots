![[Pasted image 20240309164950.png]]

Code snippet from an identity-based policy. In this example, the policy is written to allow three actions to be performed on a specific AWS IAM account.

After you apply an identity-based policy to a user, group, or role, the policy allows or denies the entity the ability to perform specified actions.

In the example shown, if the entity is a user, the policy allows the user to do the following:
- Create, delete, get, or update their own password by using IAM LoginProfile actions
- Create, delete, list, or update their own access key by using IAM AccessKey actions
- Create, delete, get, list, or update their own Secure Shell (SSH) keys by using IAM SSHPublicKey actions

The actions in the policy include wildcards, which are indicated with an asterisk ( * ). This format provides a convenient way to include a set of related actions. Notice that the policy gets the AWS user name dynamically, as defined in the "Resource“ key.
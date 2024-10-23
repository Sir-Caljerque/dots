![[Pasted image 20240803065907.png]]

- An **IAM group**is a collection of IAM users
- A group is used to grant the same permissions to multiple users
    - Permissions granted by attaching IAM policy or policies to the group
- A user can belong to multiple groups
- There is no default group
- Groups cannot be nested

An **IAM group** is a collection of IAM users. IAM groups offer a convenient way to specify permissions for a collection of users, which can make it easier to manage the permissions for those users.

For example, you could create an IAM group that is called Developersand attach an IAM policy or multiple IAM policies to the Developers group that grant the AWS resource access permissions that developers typically need. Any user that you then add to the Developer group will automatically have the permissions that are assigned to the group. In such a case, you do not need to attach the IAM policy or IAM policies directly to the user. If a new user joins your organization and should be granted developer privileges, you can simply add that user to the Developers group. Similarly, if a person changes jobs in your organization, instead of editing that user's permissions, simply remove the user from the group.

Important characteristics of IAM groups:
- A group can contain many users, and a user can belong to multiple groups.
- Groups cannot be nested.Agroup can contain only users, and a group cannot contain other groups.
- There is no default group that automatically includes all users in the AWS account. If you want to have a group with all account users in it, you need to create the group and add each new user to it.

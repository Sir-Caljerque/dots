![[Pasted image 20240803064036.png]]
•*Identity-based policies*are attached to a user, group, or role•Resource-based policiesare attached to a resource (notto a user, group or role)
•Characteristics of resource-based policies –
•Specifies who has access to the resource and what actions they can perform on it
•The policies are inlineonly, not managed
•Resource-based policies are supported only by some AWS services

While *identity-based policies* are attached to a user, group, or role, **resource-based policies** are attached to a resource, such as an S3 bucket. These policies specify who can access the resource and what actions they can perform on it.

Resource-based policies are defined **inline**only, which means that you define the policy on the resource itself, instead of creating a separate IAM policy document that you attach. For example, to create an S3 bucket policy (a type of resource-based policy) on an S3 bucket, navigate to the bucket, click the **Permissions**tab, click the **Bucket Policy**button, and define the JSON-formatted policy document there.An Amazon S3 access control list (ACL) is another example of a resource-based policy.

The diagram shows two different ways that the user MaryMajorcould be granted access to objects in the S3 bucket that is named photos. On the left, you see an example of an identity-based policy. An IAM policy that grants access to the S3 bucket is attached to the *MaryMajor*user. On the right, you see an example of a resource-based policy. The S3 bucket policy for the photosbucket specifies that the user MaryMajoris allowed to list and read the objects in the bucket. 

Note that you could define a deny statement in a bucket policy to restrict access to specific IAM users, even if the users are granted access in a separate identity-based policy. An explicit deny statement will always take precedence over any allow statement.

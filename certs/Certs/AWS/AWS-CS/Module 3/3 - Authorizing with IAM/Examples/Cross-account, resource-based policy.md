![[Pasted image 20240309165256.png]]

Code snippet from a cross-account, resource-based policy. In this example, the policy written by Account A allows a specific principal in Account B to perform any S3 action in a specific S3 bucket in Account A.

This example shows a resource-based policy that allows some cross-account access.

In this scenario, Account A created a resource-based policy. The policy grants Account B access to perform any Amazon S3 API operation — which is indicated by the asterisk ( * ) — on Account A's S3 bucket (named DOC-EXAMPLE-BUCKET).

This S3 bucket policy doesn’t specify any IAM users, groups, or roles. Instead, it specifies Account B (AWS account number 111122223333). Account B should create an IAM user policy to allow a user in Account B to access Account A's bucket.
![[Pasted image 20240309165656.png]]

Code snippet of a deny statement portion of an IAM policy. The highlighted portion show a configuration that denies an entity to perform any DynamoDB or S3 action on any resource other than the specific DynamoDB table and S3 buckets specified in the allow section.

The second half of this policy is an explicit deny. Here, the explicit deny ensures that the entity can’t perform any action on any DynamoDB table or S3 bucket. The only exceptions are the tables or buckets that are specified in the policy statement. Even if permissions are granted in another policy, the explicit deny overrides these permissions. An explicit deny statement takes precedence over an allow statement.

In its totality, this IAM policy allows access to specific DynamoDB and Amazon S3 resources. It then explicitly denies access to any other DynamoDB or Amazon S3 resources in the account.
![[Pasted image 20240309165825.png]]

Code snippets of a permissions boundary. The first snippet allows three types of actions to be completed, on in three specific areas S3, CloudWatch, and EC2. The second snippet allows only the IAM:CreateUser action on any resource.

For reference, a permissions boundary is an advanced feature for using a managed policy to set the maximum permissions that an identity-based policy can grant to an IAM entity. An entity's permissions boundary allows it to perform only the actions that are allowed by both its identity-based policies and its permissions boundaries.

Assume policy 1 is attached to IAM user ExampleUser . This policy allows the user to manage only Amazon S3, Amazon CloudWatch, and Amazon EC2 resources. The policy restricts all other services (including IAM).

If IAM policy 2 is then attached to ExampleUser, and ExampleUser attempts to perform the iam:CreateUser operation, the operation fails. This is due to the restrictions placed by policy 1. Modifying the boundary policy to allow management of the IAM service would allow ExampleUser to run the iam:CreateUser operation successfully.
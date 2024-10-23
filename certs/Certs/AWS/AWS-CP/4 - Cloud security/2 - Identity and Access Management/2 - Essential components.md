**User**: A **person** or **application**that can authenticate with an AWS account.
**Group**:A **collection of IAM users** that are granted identical authorization.
**Policy**: The document that defines **which resources can be accessed** and the **level of access** to each resource.
**Role**: Useful mechanism to grant a set of permissions for making AWS service requests. 

To understand how to use IAM to secure your AWS account, it is important to understand the role and function of each of the four IAM components.

- An **IAM user** is a person or application that is defined in an AWS account, and that must make API calls to AWS products. Each user must have a unique name (with no spaces in the name) within the AWS account, and a set of security credentials that is not shared with other users. These credentials are different from the AWS account root user security credentials. Each user is defined in one and only one AWS account.

- An **IAM group** is a collection of IAM users. You can use IAM groups to simplify specifying and managing permissions for multiple users.

- An **IAM policy** is a document that defines permissions to determine what users can do in the AWS account. A policy typically grants access to specific resources and specifies what the user can do with those resources. Policies can also explicitly deny access.

- An **IAM role**is a tool for granting temporary access to specific AWS resources in an AWS account.

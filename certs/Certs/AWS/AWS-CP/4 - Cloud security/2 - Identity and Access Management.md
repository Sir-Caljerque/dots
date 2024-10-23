# 1 - IAM

- Use **IAM** to manage access to **AWS resources** –
    - A resource is an entity in an AWS account that you can work with
    - Example resources; An Amazon EC2 instance or an Amazon S3 bucket
- Example – Control who can terminate Amazon EC2 instances 
- Define fine - grained access rights –
    - **Who** can access the resource
    - **Which** resources can be accessed and what can the user do to the resource
    - **How** resources can be accessed 
- IAM is a no-cost AWS account feature

**AWS Identity and Access Management (IAM)**allows you to control access to compute, storage, database, and application services in the AWS Cloud.IAM can be used to handle authentication, and to specify and enforce authorization policies so that you can specify which users can access which services. 

IAM is a tool that centrally manages access to launching, configuring, managing, and terminating resources in your AWS account. It provides granular control over access to resources, including the ability to specify exactly which **API** calls the user is authorized to make to each service. Whether you use the AWS Management Console, the AWS CLI, or the AWS SDKs, every call to an AWS service is an API call.

With IAM, you can manage *which*resources can be accessed by who,and howtheseresourcescan be accessed. You can grant different permissions to different people for different resources. For example, you might allow some users full access to Amazon EC2, Amazon S3, Amazon DynamoDB, Amazon Redshift, and other AWS services. However, for other users, you might allow read-only access to only a few S3 buckets.Similarly, you might grant permission to other users to administer only specific EC2 instances.You could also allow a few usersto access only the account billing information, but nothing else.

IAM is a feature of your AWS account, and it is offered at no additional charge

# 2 - Essential components

**User**: A **person** or **application**that can authenticate with an AWS account.
**Group**:A **collection of IAM users** that are granted identical authorization.
**Policy**: The document that defines **which resources can be accessed** and the **level of access** to each resource.
**Role**: Useful mechanism to grant a set of permissions for making AWS service requests. 

To understand how to use IAM to secure your AWS account, it is important to understand the role and function of each of the four IAM components.

- An **IAM user** is a person or application that is defined in an AWS account, and that must make API calls to AWS products. Each user must have a unique name (with no spaces in the name) within the AWS account, and a set of security credentials that is not shared with other users. These credentials are different from the AWS account root user security credentials. Each user is defined in one and only one AWS account.

- An **IAM group** is a collection of IAM users. You can use IAM groups to simplify specifying and managing permissions for multiple users.

- An **IAM policy** is a document that defines permissions to determine what users can do in the AWS account. A policy typically grants access to specific resources and specifies what the user can do with those resources. Policies can also explicitly deny access.

- An **IAM role**is a tool for granting temporary access to specific AWS resources in an AWS account.

# 3 - Authenticate as an IAM user to gain access

When you define an **IAM user**, you select what **types of access** the user is permitted to use. 
- **Programmatic access**
    - Authenticate using:
        - **Access key ID**
        - **Secret access key**
    - Provides AWS CLI and AWS SDK access
- **AWS Management Console access**
    - Authenticate using:
        - **12-digit Account ID or alias**
        - IAM **user name**
        - IAM **password**
    - If enabled, **multi-factor authentication (MFA)**prompts for an authentication code.

**Authentication**is a basic computer security concept: a user or system must first prove their identity. Consider how you authenticate yourself when you go to the airport and you want to get through airport security so that you can catch your flight. In this situation, you must present some form of identification to the security official to prove who you are before you can enter a restricted area. A similarconcept applies for gaining access to AWS resources in the cloud. 

When you define an IAM user, you select what type of access the user is permitted to use to access AWS resources. You can assign two different types of access to users: programmatic access and AWS Management Console access. You can assign programmatic access only, console access only, or you can assign both types of access.

If you grant **programmatic access**, the IAM user will be required to present an**access key ID**anda **secret access key**when they make an AWS API call by using the AWS CLI, the AWS SDK, or some other development tool.

If you grant **AWS Management Console access**, the IAM user will be required to fill in the fields that appear in the browser login window. The user is prompted to provide either the 12-digit account ID or the corresponding account alias. The user must also enter their IAM user name and password. If **multi-factor authentication (MFA)** is enabled for the user, they will also be prompted for an authentication code.

# 4 - IAM MFA

![[Pasted image 20240802093641.png]]

- MFA provides increased security.
- In addition to **username** and **password**, MFA requires a unique **authentication code** to access AWS services.

AWS servicesand resources can be accessed by using the AWS Management Console, the AWS CLI, or through SDKs and APIs. For increased security, we recommend enabling MFA. 

With MFA, users and systems must provide an **MFA token** — in addition to the regular sign-in credentials — before they can access AWS services and resources. 

Options for generating the MFA authentication token include **virtual MFA** - compliant applications (such as Google Authenticator or Authy 2-Factor Authentication), **U2F security key devices**, and **hardware MFA devices**.

# 5 - Authorization

# What actions are permitted
![[Pasted image 20240802093718.png]]

**Authorization**is the process of determining what permissionsa user, service or application should be granted. After a userhas been authenticated, they must be authorizedto access AWS services. 

By default, IAM users do not have permissions to access any resources or data in an AWS account. Instead, you must explicitly grant permissions to a user, group, or roleby creating apolicy,which is a document in JavaScript Object Notation (JSON) format.A policy lists permissionsthat allowor deny access to resources in the AWS account.

# IAM
- Assign permissions by creating an IAM policy.
- Permissions determine **which resources and operations** are allowed:
    - All permissions are implicitly denied by default.
    - If something is explicitly denied, it is never allowed.
*Best practice*: Follow the **principle of least privilege**.
> [!NOTE]
> The scope of IAM service configurations is **global**. Settings apply across all AWS Regions.

To assign permission to a user, group or role, you must create an**IAM policy**(or find an existing policy in the account). There are no default permissions. All actions in the account are denied to the user by default (implicit deny) unless those actions are explicitly allowed. Any actions that you do not explicitly allow are denied. Any actions that you explicitly deny are always denied.

The **principle of least privilege**is an important concept in computer security. It promotes that you grant only the minimal user privileges needed to the user, based on the needs ofyourusers. When you create IAM policies, it is a best practice to follow this security advice of grantingleast privilege. Determine what users need to be able to do and then craft policies for them that let the users performonlythose tasks. Start with a minimum set of permissions and grant additional permissions as necessary. Doing so is more secure than starting with permissions that are too broad and then later trying to lock down the permissions granted.

Note that the scope of the IAM service configurations is **global**. The settings are not defined at an AWS Region level. IAM settings apply across all AWS Regions.




# 6 - IAM policies and example

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

# 7 - Resource-based policies

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

# 8 - IAM permissions

How IAM determines permissions:
![[Pasted image 20240803064221.png]]

IAM policies enable you to fine-tune privileges that are granted to IAM users, groups, and roles. 

When IAMdetermines whether a permission is allowed, IAM first checks for the existence of any applicable **explicit denial policy**. If noexplicit denial exists, it then checks for any applicable **explicit allow policy**. If neither an explicit deny nor an explicit allow policy exists, IAM reverts to the default, which is to deny access. This process is referred to as an **implicit deny**. The user will be permitted to take the action only if the requested action is *not* explicitly denied and *is*explicitly allowed.

It can be difficult to figure out whether access to a resource will be granted to an IAM entity when you develop IAM policies. The IAM Policy Simulator at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.htmlis a useful tool for testing and troubleshooting IAM policies.

# 9 - IAM groups

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

# A - IAM roles

![[Pasted image 20240803070528.png]]
- An **IAM role**is an IAM identity with specific permissions
- Similar to an IAM user
    - Attach permissions policies to it
- Different from an IAM user 
    - Not uniquely associated with one person
    - Intended to be **assumable**by a *person*, *application*, or *service*
- Role provides **temporary**security credentials
- Examples of how IAM roles are used to **delegate**access –
    - Used by an IAM user in the same AWS account as the role 
    - Used by an AWS service—such as Amazon EC2—in the same account as the role
    - Used by an IAM user in a different AWS account than the role

An **IAM role**is an IAM identity you can create in your account that has specific permissions. An IAM role is **similar to an IAM user**becauseit is also an AWS identity that you can attach permissions policies to, and those permissions determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. Also, a role does not have standard long-term credentials such as a password or access keys associated with it. Instead, when you assume a role, the role provides you with temporary security credentials for your role session.

You can**use roles to delegate access to users, applications, or services**that do not normally have access to your AWS resources. For example, you might want to grant users in your AWS account access to resources they don't usually have, or grant users in one AWS account access to resources in another account. Or you might want to allow a mobile app to use AWS resources, but you do not want to embed AWS keys within the app (where the keys can be difficult to rotate and where users can potentially extract them and misuse them). Also, sometimes you may want to grant AWS access to users who already have identities that are defined outside of AWS, such as in your corporate directory. Or, you might want to grant access to your account to third parties so that they can perform an audit on your resources. 

For all of these example use cases, IAM roles are an essential component to implementing the cloud deployment.

# Example

## Scenario
An application that runs on an EC2 instance needs access to an S3 bucket

## Solution
- Define an IAM policy that grants access to S3 bucket
- Attatch the policy to a role
- Allow the EC2 instance to assume the role

In the diagram, a developer runs an application on an EC2 instance that requires access to the S3 bucket that is namedphotos. An administrator creates theIAM role and attaches the role to the EC2 instance. The role includes a permissions policy that grants read-only access to the specified S3 bucket. It also includes a trust policy that allows the EC2 instance to assume the role and retrieve the temporary credentials. When the application runs on the instance, it can use the role's temporary credentials to access the photosbucket. The administrator does not need to grant the application developer permission to access the photos bucket, and the developer never needs to share or manage credentials.

To learn more details about this example, see Using an IAM Role to Grant Permissions to Applications Running on Amazon EC2 Instances at https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html.

# B - Key takeaways

Some keytakeaways from this section of the module include:
- **IAM policies** are constructed with JavaScript Object Notation (JSON) and define permissions.
    - IAM policies can be attached to any **IAM entity**.
    - Entities are IAM users, IAM groups, and IAM roles.
- An **IAM user** provides a way for a person, application, or service to authenticate to AWS.
- An **IAM group** is a simple way to attach the same policies to multiple users.
- An **IAM role** can have permissions policies attached to it,and can be used to delegate temporary access to users or applications.


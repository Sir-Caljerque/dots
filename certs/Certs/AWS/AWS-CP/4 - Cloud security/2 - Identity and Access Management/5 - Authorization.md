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




![[Pasted image 20240229110224.png]]


When you grant permissions to users, groups, roles, and resources, follow the standard security advice of strong authentication and the principle of least privilege. This practice means that you grant only the permissions that are needed to perform a task.

It’s more secure to start with a minimum set of permissions and grant additional permissions as needed. This provides better security than starting with permissions that are too permissive and then trying to restrict them later. To define the correct set of permissions, you must do some research to determine what access is needed to accomplish a specific task.

When you create IAM policies, determine what your users need to do, and then craft policies that allow them to perform only those tasks. Similarly, create policies for individual resources that identify precisely who is allowed to access the resource, and allow only the minimal permissions for those users. For example, perhaps developers should be allowed to create EC2 instances in production environments but not to stop or terminate the instances.
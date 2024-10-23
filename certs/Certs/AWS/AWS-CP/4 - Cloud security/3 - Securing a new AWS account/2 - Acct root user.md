# Step 1: Stop using the account root user as soon as possible.
    - The account root user has unrestricted access to all your resources.
- To stop using the account root user:
    1.While you are logged in as the account root user, create an IAM user for yourself. Save the access keys if needed.
    2.Create an IAM group, give it full administrator permissions, and add the IAM user to the group.
    3.Disable and remove your account root user access keys, if they exist.
    4.Enable a password policy for users. Copy the **IAM users sign-in link** from the IAM Dashboard page. Then, sign out as the account root user.
    5.Sign in with your new IAM user credentials. 
    6.Store your account root user credentials in a secure place. 

To view detailed instructions for how to set up your first IAM user and IAM group, see Creating Your First IAM Admin User and Group at https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html.

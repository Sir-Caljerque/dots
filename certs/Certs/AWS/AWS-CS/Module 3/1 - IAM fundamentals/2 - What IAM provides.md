- Authentication
	- **Who** is requesting access to the AWS account and the resources in it?
	- its important to establish the identity of the requester through credentials
	- The requester could be a *person* or *application* IAM calls them *principals*
- Authorization
	- After the requester has been auth'd, **what** should theyu be allowed to do?
	- IAM checks for policies that are relevant to the request to determine whether to allow or deny the request

With IAM authentication, you can use the identity of requesters to control who can use your AWS resources. With IAM authorization, you can also use access management to control what resources they can use and in what ways.

To understand the fundamental aspects of authentication and authorization, consider a banking analogy. Think of a bank that allows their customers (users) to access their accounts online. Suppose that you are a bank customer. You have money in a checking account at that bank, and you want to pay a bill online. Should any random person be able to log in to your bank account and pay their bills with the money in your account? No, a random person shouldn’t be able to use the money in your account.

Before the bank allows you to access your checking account, the bank must ensure that the person who is accessing the account is you. The bank wants to authenticate that you are who you claim to be. They typically
accomplish this authentication by requiring you to enter your user name and a password that is supposedly known only to you. For extra security, they might have configured two-factor authentication. Thus, in addition to typing in a password, you also must receive a code on your phone and enter that code

Now, suppose that you are successfully logged in to the bank website (authenticated). Can you pay your bill by using the money in some other customer's account? No, you shouldn’t be able to use another customer’s money to pay your bill. You don’t have the authorization to access accounts that don’t belong to you. However, you are authorized to access the money in your account, and you are authorized to pay bills by using your money

How does this analogy relate to IAM? Similar to how a bank must secure access to resources (your money), you — as an AWS account owner — must secure access to your AWS account. You want whatever data that you store in your account to be secure so that others can’t access it. Likewise, you want to secure the application logic of anything that you build on AWS, so that others can’t modify it. IAM provides many features that can help you to accomplish these security objectives.


![[Pasted image 20240229104649.png]]

When you interact with AWS by using the console, AWS CLI, or AWS SDKs, you must provide AWS credentials

Two primary types of credentials are used for authentication. Which credential type you use depends on how you access AWS:
- To authenticate from the console, you must sign in with your user name and password.
- To authenticate programmatically through the AWS CLI, SDKs, and APIs, you must provide an AWS access key. The AWS access key is the combination of an access key ID and a secret access key.

The situation will dictate the authentication method. In most circumstances, a human user will use the AWS CLI method, whereas an automated program will use the SDK or API method.

You might also be required to provide additional security information. For example, AWS recommends that you use MFA to increase the security of your account
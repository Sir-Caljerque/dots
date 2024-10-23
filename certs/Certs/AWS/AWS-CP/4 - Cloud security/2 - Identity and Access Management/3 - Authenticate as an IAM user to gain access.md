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

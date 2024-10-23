![[Pasted image 20240420205004.png]]

With Secrets Manager, you can automatically rotate passwords for Amazon Aurora, MySQL, MariaDB, PostgreSQL, and Oracle databases that are hosted on AWS. To turn on automatic rotation, you need administrator permissions.This rotation is done without human intervention through a Lambda function, either on a schedule that you specify or as needed. For Amazon RDS DB engine credentials, this Lambda function already exists, but if you have other credentials with an expiration, such as a SAML login, you might want to create a custom function for use with Secrets Manager.

The rotation function does the work of rotating the secret. The process to rotate a secret has four steps, which correspond to four steps in the Lambda rotation function. Secrets Manager uses staging labelsto label secret versions during rotation:
1. The function contacts the DB for new credentials.
2. Secrets Manager stores the new credentials with the AWSPENDING label.
3. The new credentials are tested.
4. The new credentials are made the default with the AWSCURRENT label.

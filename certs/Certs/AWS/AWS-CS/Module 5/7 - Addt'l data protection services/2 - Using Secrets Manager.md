![[Pasted image 20240420204743.png]]

This diagram shows how to use Secrets Managerto secure database credentials. The approach uses an AWS Lambda function, which uses credentials from Secrets Manager to connect to and query the backend Amazon Relational Database Service (Amazon RDS) database. This is done without hardcoding the secrets in code or passing them through environment variables. This approach helpsyou secure last-mile secrets and protect your backend databases.

The steps in this workflow are as follows:
1. Clients call the RESTful API hosted on Amazon API Gateway.
2. API Gateway runs the Lambda function.
3.The Lambda function retrieves the database secrets using the Secrets Manager API. Secrets Manager retrieves the secret, decrypts the protected secret text,and returns it to the function over a secured channel.
4. The Lambda function connects to the Amazon RDS database by using database secrets from Secrets Manager and returns the query results

For more information, see How to Securely Provide Database Credentials to Lambda Functions by Using AWS Secrets Manager in the AWS Security Blog at:
https://aws.amazon.com/blogs/security/how-to-securely-provide-database-credentials-to-lambda-functions-by-using-aws-secrets-manager.

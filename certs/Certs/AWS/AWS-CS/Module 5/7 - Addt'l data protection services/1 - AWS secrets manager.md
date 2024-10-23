- Is a secure and scalable method for managing access to secrets
- Is a way to meet regulatory and compliance requirement
- Rotates secrets safely
- Audits and monitors the lifestyle of secrets
- Help you to avoid putting secrets in code or config files

AWS Secrets Manager is a service that makes it easier for you to manage secrets.Secretscan be database credentials, passwords, third-party API keys, and even arbitrary text. You can store and control access to these secrets centrally by using the console, AWS CLI, or API and SDKs.

With Secrets Manager, you can remove hard-coded credentials (including passwords) from your source code and avoid storing credentials in a configuration file. Instead, you use an API call to Secrets Manager to retrieve the secret programmatically. This helps ensure that the secret can't be compromised by someone examining your code, because the secret simply isn't there. Also, you can configure Secrets Manager to automatically rotate the secret for you according to a schedule that you specify. Therefore, you can replace long-term secrets with short-term ones, which helps to significantly reduce the risk of compromise.

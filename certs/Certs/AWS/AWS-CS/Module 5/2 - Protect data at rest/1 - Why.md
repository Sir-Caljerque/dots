# Why protect data at rest?
- Common scenarios
    - Info disclosure
    - Data integrity compromise
    - Accidental or malitious deletion
    - System, hardware, and software stability
- Extra layer of protection of your system is compromised

It's important to encrypt data at rest. This ensures the security of the data even if an unauthorized party gains access to it. Encrypting data at rest makes it much more difficult for attackers to compromise data, even if they can compromise an endpoint. Also, you might need to protect your data at rest due to business or compliance requirements.

The following list identifies the most common issues that make it necessary to protect your data at rest. The list also describes how to protect against each issue:
- **Information disclosure:** Limit the number of users who can access data, and use policies to manage access to resources. Use encryption to protect confidential data.
- **Data integrity compromise:** Use resource permissions to limit the scope of users who can modify data. Implement digital signature and encryption. Restore data from backup, or, in the case of Amazon S3, from a previous object version.
- **Accidental or malicious deletion:** Use the correct permissions and the principle of least privilege. Restore data from backup, or, in the case of Amazon S3, from a previous object version.
- **System, hardware, and software availability:** In the case of a system failure or natural disaster, restore your data from replicas.

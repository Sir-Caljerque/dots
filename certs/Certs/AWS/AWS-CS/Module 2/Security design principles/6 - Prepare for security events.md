# Mitigate the impact of security incidents
In AWS, the following practices facilitate effective incident response:

- Detailed logging is available. Logs contain important content such as file access and changes.
- Events can be automatically processed and invoke tools that automate responses through the use of AWS APIs.

- You can pre-provision tooling and a “clean room” by using AWS CloudFormation. This provides the ability to carry out forensics in a safe, isolated environment.
# Create processes to isolate incidents and restore operations
AWS provides multiple means to encrypt data at rest and data in transit. We build features into our services that make it easier to encrypt your data. For example, we have implemented server - side encryption (SSE) for Amazon S3 to make it easier for you to store your data in an encrypted form. You can also arrange for Elastic Load Balancing (ELB) to handle the entire HTTPS encryption and decryption process (generally known as SSL termination).
![[Pasted image 20240420183355.png]]

Client-side encryption takes place before data is submitted to AWS, and decryption occurs after data is retrieved from AWS. Amazon S3 receives your encrypted data but does not play a role in encrypting or decrypting it.

To enable client-side encryption, you can use a key stored in AWS KMS or use a key that you store within your application.

AWS supports client-side encryption libraries such as the AWS Encryption SDK, Amazon DynamoDB Encryption Client, and Amazon S3 encryption clients.

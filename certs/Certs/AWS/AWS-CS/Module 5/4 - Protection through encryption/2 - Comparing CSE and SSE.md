# CSE
- Your application encrypts data before sending it to AWS
- Data is stored in its encrypted state
- The keys and algos are known only to you

# SSE
- AWS encrypts data on your behalf after receiving it 
- The process is transparent to the user

Depending on your security requirements, you can use client-side encryption (CSE) or server-side encryption (SSE) to encrypt your data. The approaches differ in when, where, and who encrypts and decrypts the data. The approach doesn't necessarily define how the data is encrypted. In addition, the approaches are not exclusive—you can often use CSE and SSE on the same data for an enhanced security profile. Each approach has advantages.

With client-side encryption(CSE), your applications encrypt data locally before submitting it to AWS and decrypt data after receiving it from AWS. You create and manage your own encryption keys. Data is stored in an encrypted form, with keys and algorithms known only to you.

Withserver-side encryption (SSE), data is encrypted at its destination by the application or service that receives it. For example, if you use SSE with Amazon S3, the service encrypts your data at the object level as it writes to disks in AWS data centers and decrypts the data for you when you access it. The encryption process is transparent to the user.

AWS supports both CSE and SSE. Most AWS services that store or manage customer data offer an SSE option or perform SSE on your data by default. These services transparently encrypt your data before writing it to disk and transparently decrypt the data when you access it. Most AWS services that support SSE are integrated with AWS KMS to protect the encryption keys that protect your data. You will learn more about AWS KMS later in this module.

For more information, see Protecting Data Using Encryption in the Amazon Simple Storage Service User Guide at:
https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingEncryption.html.

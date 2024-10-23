- Encryptionencodes data with a secret key, which makes it unreadable
    - Only those who have the secret key can decode the data
    - AWS KMS can manage your secret keys
- AWS supports encryption of data at rest
    - Data at rest = Data stored physically (on disk or on tape)
    - You can encrypt data stored in any service that is supported by AWS KMS, including:
        - Amazon S3
        - Amazon EBS
        - Amazon Elastic File System (Amazon EFS)
        - mazon RDS managed databases

**Data encryption** is an essential tool to usewhen your objective is to protect digital data. Data encryption takes data that is legible and encodes it so that it is unreadable to anyone who does not have access to the secret key that can be used to decode it. Thus, even if an attacker gains access to your data, they cannot make sense of it.  

**Data at rest** refers to data that is physically stored on disk or on tape. 

You can create encrypted file systems on AWS so that all your data and metadata is encrypted at rest by using the open standard AdvancedEncryption Standard (AES)-256 encryption algorithm. When you use AWS KMS, encryption and decryption arehandled automatically and transparently, so thatyou do not need to modify your applications. If your organization is subject to corporate or regulatory policies that require encryption of data and metadata at rest, AWS recommends  enabling encryption on all services that store your data. You can encrypt data stored in any service that is supported by AWS KMS. See How AWS Services use AWS KMS for a list of supported services at https://docs.aws.amazon.com/kms/latest/developerguide/service-integration.html.

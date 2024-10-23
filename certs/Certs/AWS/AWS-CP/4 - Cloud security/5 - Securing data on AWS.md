# 1 - Encryption at rest

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

# 2 - Encryption of data in transit

- Encryption of data in transit(data moving across a network)
    - Transport Layer Security (TLS)—formerly SSL—is an open standard protocol 
    - AWS Certificate Manager provides a way to manage, deploy, and renew TLS or SSL certificates 
- Secure HTTP (HTTPS) creates a secure tunnel
    - Uses TLS or SSL for the bidirectional exchange of data
- AWS services support data in transit encryption. 
    - Two examples:
    - ![[Pasted image 20240812155443.png]]
    - | EC2 <----> EFS              |               Storage Gateway <----> S3 |

**Data in transit** refers to data that is moving across the network. Encryption of data in transit is accomplished by using Transport Layer Security (TLS) 1.2 with an open standard AES-256 cipher.TLS was formerly called Secure Sockets Layer (SSL).

**AWS Certificate Manager**is a service that enables you to provision, manage, and deploy SSL or TLS certificates for use with AWS services and your internal connected resources. SSL or TLS certificates are used to secure network communications and establish the identity of websites over the internet, and also resources on private networks. With AWS Certificate Manager, you can request a certificate and then deploy it on AWS resources (such as load balancers or CloudFront distributions).  AWS Certificate Manager also handles certificate renewals.

Web traffic that runs over HTTP is not secure. However, traffic that runs over **Secure HTTP (HTTPS)** is encrypted by using TLS or SSL. HTTPS traffic is protected against eavesdropping and man-in-the-middle attacks because of the bidirectional encryption of the communication.

AWS services support encryption for data in transit. Two examples of encryption for data in transit are shown. The first example shows an EC2 instance that has mounted an Amazon EFS shared file system. All data traffic between the instance and Amazon EFS is encrypted by using TLS or SSL. For further details about this configuration, see Encryption of EFS Data in Transit at https://docs.aws.amazon.com/whitepapers/latest/efs-encrypted-file-systems/encryption-of-data-in-transit.html.

The second example shows the use of **AWS Storage Gateway**, a hybrid cloud storage service that provides on-premises access to AWS cloud storage. In this example, the storage gateway is connected across the internet to Amazon S3, and the connection encrypts the data in transit

# 3 - Securing S3 buckets and objs

- ewly created S3 buckets and objects are privateand protectedby default.
- When use cases require sharing data objects on Amazon S3 –
    - It is essential to manage and control the data access.
    - Follow the permissions that follow the principle of least privilege and consider using Amazon S3 encryption.
- Tools and options for controlling access to S3 data include –
    - Amazon S3 Block Public Access feature: Simple to use.
    - IAM policies: A good option when the user can authenticate using IAM.
    - Bucket policies
    - Access control lists(ACLs): A legacy access control mechanism.
    - AWS Trusted Advisorbucket permission check: A free feature.

By default, all Amazon S3 buckets are private and can be accessed onlyby users who are explicitly granted access.  It is essential to manage and control access to Amazon S3 data. AWS provides many tools and options for controlling access to your S3 buckets or objects, including:
- Using **Amazon S3 Block Public Access**. These settings override any other policies or object permissions. Enable Block Public Access for all buckets that you don't want to be publicly accessible. This feature provides a straightforward method for avoiding unintended exposure of Amazon S3 data.
- Writing **IAM policies** that specify the users or roles that can access specific buckets and objects. This method was discussed in detail earlier in this module.
- Writing **bucket policies** that define access to specific buckets or objects.  This option is typically used when the user or system cannot authenticate by using IAM. Bucket policies can be configured to grant access across AWS accounts or to grant public or anonymous access to Amazon S3 data. If bucketpolicies are used, they should be written carefully and tested fully. You can specify a deny statement in a bucket policy to restrict access.Access will be restricted even if the users have permissions that are granted in an identity-based policy that is attached to the users. 
- Setting **access control lists (ACLs)** on your buckets and objects. ACLs are less commonly used (ACLs predate IAM). If you do use ACLs, do not set access that is too open or permissive.
- **AWS Trusted Advisor** provides a bucket permission check feature that is a useful tool for discovering if any of the buckets in your account have permissions that grant global access.


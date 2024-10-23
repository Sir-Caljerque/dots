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

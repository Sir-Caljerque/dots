![[Pasted image 20240420192228.png]]

- Use Secure-Socket-Layer (SSL) endpoints over Transport Layer Security (TLS) (HTTPS).
- Use encryption
- Use Amazon VPC endpoints to limit access top your bucket

You can protect data in transit by using Secure Sockets Layer (SSL) or client-side encryption. You can securely upload your data to or download it from Amazon S3 through SSL endpoints by using the HTTPS protocol. Client-side encryption will protect your data in transit because the data is encrypted before you send it to Amazon S3

You can also limit access to an S3 bucket from a specific Amazon Virtual Private Cloud (Amazon VPC) endpoint or a set of endpoints by using S3 bucket policies.

To protect data in transit, AWS encourages customers to use a multi-level approach. All network traffic between AWS data centers is transparently encrypted at the physical layer. All traffic within a VPC and between peered VPCs across AWS Regions is transparently encrypted at the network layer when using supported EC2 instance types. At the application layer, customers have a choice about whether and how to use encryption by using a protocol such as Transport Layer Security (TLS). All AWS service endpoints support TLS to create a secure HTTPS connection to make API requests.



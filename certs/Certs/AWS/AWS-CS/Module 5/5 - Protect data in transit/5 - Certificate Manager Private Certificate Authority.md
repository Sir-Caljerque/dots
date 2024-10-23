![[Pasted image 20240420193510.png]]

By using AWS Certificate Manager Private Certificate Authority, you can create private certificate authority (CA) hierarchies, including root and subordinate CAs, without the investment and maintenance costs of operating an on-premises CA. Your private CAs can issue end-entity X.509 certificates, which are useful in scenarios such as the following:
- Creating encrypted TLS communication channels 
- Authenticating users, computers, API endpoints, and IoT devices
- Cryptographically signing code
- Implementing Online Certificate Status Protocol (OCSP) to obtain certificate revocation status

ACM Private CA is for enterprise customers who are building a public key infrastructure (PKI) inside the AWS Cloud. The service is intended for private use within an organization. With ACM Private CA, you can create your own CA hierarchy and issue certificates with it to authenticate internal users, computers, applications, services, servers, and other devices, and to sign computer code. Certificates that a private CA issues are trusted only within your organization, not on the internet. After creating a private CA, you have the ability to issue certificates directly (that is, without obtaining validation from a third-party CA) and to customize them to meet your organization's internal needs.

The diagram shows ACM Private CA in action:
1. The CA administrator creates a subordinate CA to issue certificates.
2. The subordinate CA sends the certificate to be signed.
3. The on-premises CA or AWS CA signs the certificate.
4. ACM Private CA issues the signed certificate to resources.



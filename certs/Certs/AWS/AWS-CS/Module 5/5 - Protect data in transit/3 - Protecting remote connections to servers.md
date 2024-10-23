- Remote Desktop Protol (RDP) is typically used for Windows server
    - RDP establisher an underlying SSL/TLD connection
    - For better security, issue a trusted X.509 certificate
    - Dont use the default self-signed certificates.
- Secure Shell (SSH) is typoically used for linux servers
    - SSH established a secure communication panel
    - Use tunneling to protect the application session in transi
    - Don't allow the root user to use an SSH terminal
    - Be sure that all users log in with an SSH key pair, and then deactivate password auth.

Users who access Windows Terminal Services in the public cloud usually use the Microsoft Remote Desktop Protocol (RDP). By default, RDP connections establish an underlying SSL/TLS connection. For optimal protection, the Windows server being accessed should be issued a trusted X.509 certificate to protect from identity spoofing or man-in-the-middle attacks. By default, Windows RDP servers use self-signed certificates, which are not trusted and should be avoided.

Secure Shell (SSH) is the preferred approach to establish administrative connections to Linux servers. SSH is a protocol that, like SSL, provides a secure communications channel between the client and server. SSH supports tunneling, which you should use to run applications such as X-Windows on top of SSH and to protect the application session in transit. By default, Amazon Machine Images (AMIs) that AWS and most vendors from the AWS Marketplace provide don't allow the root user to log in from an SSH terminal.The default configuration for AWS provided AMIs is logging in with an SSH key pair with password authentication deactivated.

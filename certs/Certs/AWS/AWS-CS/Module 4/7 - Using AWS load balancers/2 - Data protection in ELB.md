![[Pasted image 20240417143336.png]]

**Single point of contact:** A load balancer serves as the single point of contact for clients. The load balancer distributes incoming app traffic from accross multiple targets, such as EC2 instances, in multiple Availability Zones, This increases the availability of your app.

An Application Load Balancer can sustain secure HTTPS communication and certificates for communications with clients. It can optionally terminate the SSL connection at the load balancer level so that you don’t need to handle certificates in your own application.

**Encryption at rest:** if you enable server-side encryption  with Amazon S3 managed encryption keys (SSE-S3) for your S3 bucket for ELB access logs, ELB automatically encrypts each access log file before it is stored in your S3 bucket. ELB also decrypts the access log files when you access them. Each log file is encrypted with a unique key, which is itself encrypted with a key that is regularly rotated.

**Encryption in transit:** ELB simplifies the process of building secure web apps by terminating HTTPS and TLS traffic from clients at the load balancer. The load balancer performs the work of encrypting and decrypting the traffic, instead of requiring each EC2 instance to handle the work for hte TLS termination.

For more information, see Data Protection in Elastic Load Balancing in the ELB User Guide at
https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/data-protection.html.
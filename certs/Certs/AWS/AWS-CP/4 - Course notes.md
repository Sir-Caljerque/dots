Shared responsibility model shares the responsibility of the safety of the cloud
- Customers - Security IN the cloud
	- Amazonh EC2
	- Amazon EBS
	- Amazon VPC
- AWS - security OF the cloud
	- AWS Lambda
	- Amazon RDS
	- AWS elastic beanstalk

-----

IAM to manage access to AWS resource
- *who, what, when, where*
- free to use
2 types of IAM access
- *Programmatic access*
	- AWS CLI
	- AWS tools and SDKs
- AWS Management console access
	- AWS management console
- IAM policies are written in JSON
- Identoty-based policies are attatched to the individual
- Resource-based policies are attatched to resources
- *<u>Explicit denies take priorities over allows</u>*
- IAM *roles* provide **temporary** privileges a person, app, or service can assume
	- can be used by anyone who needs it

---

CloudTrail logs **PEOPLE**, or the **WHO**.

***

AWS organizations allow for the management of multiple AWS accounts
	- group AWS accounts into Organizational Units (OUs) 
	- Similar to Roles and Policies
- **Service control policies** are IAM policies, however they never *grant* permissions
- **AWS KMS** can be used with CloudTrail to track key usage
- **Amazon congnito** allows user user *sign-up* and *sign-in* and supports sign-in with *Facebook, Google,* or *Amazon*
- **AWS Shield** protects against *DDoS/DoS* attacks and aims to **Minimize downtime and latency** **free**

**AWS KMS** manages your secret keys for encryption
- Uses AES-256 encryption algo
- Data at rest
secures Data in transit using TLS - Transport layer security
- **AWS Certificate manager** to manage TLS or SSL certs
- HTTPS traffic is already encrypted
- S3 buckets are secured by default and need explicit permission to access
	- **AWS trusted advisor** checks your bucket policies for public access

---

**AWS config** manages the configurations of your services
- evals expectations vs reality of your configurations
- review config changes
- easier compliance and security analysis

**AWS Artifact** is for compliance related info
- Security and compliance reports
- AWS ISO Certs
- Payment Card Industry (PCI) and Service Organization Control (SOC) reports
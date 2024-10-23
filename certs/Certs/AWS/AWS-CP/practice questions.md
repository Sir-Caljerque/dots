ooxoox(xo)oo(x)oxx(x)ooox{x}

- having a **Loosely coupled** design prevents entire systems from going down due to a *single point of failure*
	- loosely coupled means reducing dependencies 

- **Amazon Inspector** improves compliance of apps - does not do S3 data classification
- **Macie** does ^
- **GuardDuty** Detects threats
- **Secrets manager** protects secrets needed to access applications, services or IT resources

- **AWS client VPN** lets you access your resources from *anywhere* with an OVPN connection
- **AWS Direct connect** links external network through a fibre optic cable that connects from your router to a *Direct connect router*
	- yourRouter--------------Directconnect
- consistent and private because the *company* is only user of the cable
- **Site-to-site VPN** uses the internet, so it is not **consistent**
- **Connect** is a *cloud contact center*, basically its for customer service.
	- omnichannel
	- does not provide a network connection
- **Private link** deals with connections between VPCs to other AWS services
- **Transit gateway** provides *centrally* managed hub to connect VPCs

- **Aurora** is MySQL and PostgreSQL - compatible **relational database**
- **DynamoDB** is a **NoSQL** database
	- managed service
- **DocumentDB** is **NoSQL** database designed to work with **MongoDB**

- **AWS Database Migration Service (DMS)** can be used to migrate data from on premises to AWS **Not to an EC2 instance**
- **Migration hub** helps **plan** and **track** application migrations
- **Application Migration Service** is **automated**. Can migrate **physical servers** and any database/apps that run on them to **EC2 instances**
- **Application Discovery Service** **Collects info** about *usage* and *configs* of on-premises servers to help plan a migration to AWS
	- Does **not** perform migration operations

- **Trusted advisor** **checks security groups** for rules that allow unrestricted access

- **Amazon Transcribe** uses ML to convert *audio data to text*
- **Polly** is an ML service that converts *text to speech*
- **Translate** is ML service for Language translation
- **Textract** is an ML service that **extracts text from scanned documents**

- **CloudWatch** can give you alerts regarding the **root user**
- **IAM** *cannot* alert about sign in events

- **Reserved instances** you can buy reserved intances for a discounted price, however, this is usually **not unused**
	- **Spot instances** allow you to buy **unused** computing power for a discounted price

- To gain **programmatic access** to an AWS account, you need
	- Access key ID
	- Secret access key
- **primary/secondary key** is for database management
- **User ID** is for IAM security

- **IAM access analyzer** helps you identify the resources in your account that have been shared with an external entity

- **S3 characteristics**
	- object store
	- Durable storage system
	- NOT a network file system, local file store, or global file system
- **Storage gateway** connects on-premises environments to cloud-based solutions

- **CodeArtifact** is a managed artifact repo that stores and shares software **ready for devel**
- **CodeBuild** helps **automatically compile source code**, run unit tests, and produce software packages
- **CodePipeline** manages **movement of code** between individual services
- **CodeCommit** is like github - it helps manage source code 
	- source code version control service

- **Elastic Beanstalk** is for *Deployment*
- **CloudFront** is for reduction of *latency*
- **Route 53** is a DNS server
	- can also check the health of the resources it routes to
- **Global accelerator** improves the availability and performance of web apps
	- uses static IP addresses
- **Lightsail** is a low end hosting solution - a simplified compute platform

- **AWS Organizations** works with SCPs that can specify max permissions of an account
- **AWS Service Catalogue** allows orgs to create and manage catalogs of IT services

- **Infrastructure Event Manager (IEM)** offers arch and scaling guidance and operational support during preparation and execution of planned events
	- included with enterprise support

- **Basic tier** provides non-technical support
- **Developer tier** provides technical support through email
- **Business tier** provides technical support through calls
- enterprise is the best
![[Pasted image 20240901100448.png]]


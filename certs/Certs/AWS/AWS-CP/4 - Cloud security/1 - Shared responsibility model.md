# 1 - SR model

Security and compliance are a shared responsibility between AWS and the customer. This shared responsibility model is designed to help relieve the customer’s operational burden. At the same time, to provide the flexibility and customer control that enables the deployment of customer solutions on AWS, the customer remains responsible for some aspects of the overall security. The differentiation of who is responsible for what is commonly referred to as security “of” the cloudversus security “in” the cloud

**AWS** operates, manages, and controls the components from the software virtualization layer down to the physical security of the facilities where AWS services operate.AWS is responsiblefor protecting the infrastructure that runs all the services thatare offered in the AWS Cloud. This infrastructure is composed of the hardware, software, networking, and facilities that run the AWS Cloud services.

**The customer is responsible**for the encryption of data at rest and data in transit. The customer should also ensure that the network is configured for security and that security credentials and logins are managed safely. Additionally, the customer is responsible for the configuration of security groups and the configuration of the operating system that run on compute instances that they launch (including updates and security patches).

# 2 - Security of the cloud

AWS is responsible for security *of*the cloud. But what does that mean?

Under the AWS shared responsibility model, AWS operates, manages, and controls the components from the bare metal host operating system and hypervisor virtualization layer down to the physical security of the facilities where the services operate. It means that AWS is responsible for protecting the global infrastructure that runs all the services that are offered in the AWS Cloud. The global infrastructure includes AWS Regions, Availability Zones, and edge locations.

AWS is responsible for the physical infrastructure that hosts your resources, including:
- **Physical security of data centers** with controlled, need-based access; located in nondescript facilities, with 24/7 security guards;two-factor authentication; access logging and review; video surveillance; and disk degaussing and destruction.
- **Hardware infrastructure**,such as servers, storage devices, and other appliances that AWS relies on.
- **Software infrastructure**,which hosts operating systems, service applications, and virtualization software.
- **Network infrastructure**, such asrouters, switches, load balancers, firewalls, and cabling. AWS also continuously monitors the network at external boundaries, secures access points, and provides redundant infrastructure with intrusion detection.

Protecting this infrastructure is the top priority for AWS. While you cannot visit AWS data centers or offices to see this protection firsthand, Amazon provides several reports from third-party auditors who have verified our compliance with a variety of computer security standards and regulations.

# 3 - Security in the cloud

While the cloud infrastructure is secured and maintained by AWS, customers are responsible for security of everything they put **in**the cloud. 

The **customer is responsible**for what is implemented by using AWS services and for the applications that are connected to AWS. The security stepsthatyou must take depend on the services that you use and the complexity of your system.

Customer responsibilities include selecting and securing any instance operating systems, securing the applications that are launched on AWS resources, security group configurations, firewall configurations, network configurations, and secure account management. 

When customers use AWS services, they maintain complete control over their content.Customers are responsible for managing critical content security requirements, including: 
- What content they choose to store on AWS
- Which AWS services are used with the content
- In what country that content is stored
- The format and structure of that content and whether it is masked, anonymized, or encrypted
- Who has access to that content and how those access rights are granted, managed, and revoked

Customers retain control of what security they choose to implement to protect their own data, environment, applications, IAM configurations, and operating systems.

# 4 - Service characteristics and security responsibility

**Infrastructure as a service (IaaS)** 
- Customer has more flexibility over configuring networking and storage settings
- Customer is responsible for managing more aspects of the security 
- Customer configures the access controls
**Platform as a service (PaaS)**
- Customer does not need to manage the underlying infrastructure
- AWS handles the operating system, database patching, firewall configuration, and disaster recovery
- Customer can focus on managing code or data

**Infrastructure as a service (IaaS)** refers to services that provide basic building blocks for cloud IT, typically including access to configure networking, computers (virtual or on dedicated hardware), and data storage space. Cloud services that can be characterized as IaaS provide the customer **with the highest level of flexibility and management control**over IT resources.IaaS services are most similar to existing on-premises computing resources that many IT departments are familiar with today.

AWS services—such as **Amazon EC2**—can be categorized as **IaaS** and thus **require the customer** **to perform all necessary security configuration and management tasks**. Customers who deploy EC2 instances are responsible for managing the guest operating system (including updates and security patches), any application software that is installed on the instances, and the configuration of the security groups thatwere provided by AWS.

**Platform as a service (PaaS)** 
refers to services that 
remove the need for the customer to manage 
the underlying infrastructure (hardware, operating systems, etc.). PaaS services enable the 
customer to focus entirely on deploying and managing applications. Customers don’t need to 
worry about resource procurement, capacity planning, software maintenance, or patching.

AWS services such as **AWS Lambda** and **Amazon RDS** can be categorized as **PaaS**because **AWS** **operates the infrastructure layer, the operating system, and platforms**.Customers onlyneed toaccess the endpoints to store and retrieve data. With PaaS services, customers are responsible for managing their data, classifying their assets, and applying the appropriate permissions.However, these service act more like managed services, with AWS handling a larger portion of the security requirements. For these services, AWS handles basic security tasks—such as operating system and database patching, firewall configuration, and disaster recovery. 

Software as a service (SaaS) 
- Software is centrally hosted
- Licensed on a subscription model or pay-as-you-go basis.
- Services are typically accessed via web browser, mobile app, or application programming interface (API)
- Customers do not need to manage the infrastructure that supports the service

**Software as a service (SaaS)** refers to services that provide centrally hosted software that is typically accessible via a web browser, mobile app, or applicationprogramming interface (API). The licensing model for SaaS offerings is typically subscription or pay as you go. With SaaS offerings, customers do not need to manage the infrastructure that supports the service. Some AWS services—such as **AWS Trusted Advisor, AWS Shield,** and**Amazon Chime**—could be categorized as SaaS offerings, given their characteristics.

**AWS Trusted Advisor** is an online tool that analyzes your AWS environment and provides real-time guidance and recommendations to help you provision your resources by following AWS best practices. The Trusted Advisor service is offered as part of your AWS Support plan. Some of the Trusted Advisor features are free to all accounts, but Business Support and Enterprise Support customers have access to the full set of Trusted Advisor checks and recommendations.

**AWS Shield** is a managed distributed denial of service (DDoS) protection service that safeguards applications running on AWS. It provides always-on detection and automatic inline mitigations that minimize application downtime and latency, so there is no need to engage AWS Support to benefit from DDoS protection. AWS Shield Advanced is available to all customers.However, to contact the DDoS Response Team, customers must have either Enterprise Support or Business Support from AWS Support.

**Amazon Chime** is a communications service that enables you to meet, chat, and place business calls inside and outside your organization, all using a single application.It is a pay-as-you-go communications service with no upfront fees, commitments, or long-term contracts.

# 5 - Key takeaways

Some keytakeaways from this section of the module include:
- AWS and the customer share security responsibilities –
    - AWS is responsible for security ofthe cloud
    - Customer is responsible for security inthe cloud
- AWS is responsible for protecting the infrastructure — including hardware, software, networking, and facilities — that run AWS Cloud services
- For services that are categorized as infrastructure as a service (IaaS),the customer is responsible for performing necessary security configuration and management tasks
    - For example, guest OS updates and security patches, firewall, security group configurations


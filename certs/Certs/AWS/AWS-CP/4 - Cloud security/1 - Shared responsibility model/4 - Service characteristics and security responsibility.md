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

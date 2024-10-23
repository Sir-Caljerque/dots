# 1 - Global infrastructure

- The **AWS Global Infrastructure** is designed and built to deliver a **flexible**, **reliable**, **scalable**, and **secure**cloud computing environment with high-quality **global****network****performance**. 
- AWS continually updates its global infrastructure footprint. Visit one of the following web pages for current infrastructure information: 
    - AWS Global Infrastructure Map: https://aws.amazon.com/about-aws/global-infrastructure/#AWS_Global_Infrastructure_Map Choose a circle on the map to view summary information about the Region represented by the circle.
    - Regions and Availability Zones: https://aws.amazon.com/about-aws/global-infrastructure/regions_az/ Choose a tab to view a map of the selected geography and a list of Regions, Edge locations, Local zones, and Regional Caches.

These resources are updated frequently to show current and planned AWS infrastructure

# 2 - AWS regions

- An AWSRegionis a geographical area.
    - Data replication across Regions is controlled by you.
    - Communication between Regions uses AWS backbone network infrastructure.
- Each Region provides full redundancy and connectivity to the network.
- A Region typically consists of two or more Availability Zones.

The AWS Cloud infrastructure is built around Regions. AWS has 22 Regions worldwide. An **AWS Region**is a physical geographical location with one or more **Availability Zones**. Availability Zones in turn consist of one or more **data centers**.

To achieve fault tolerance and stability, Regions are isolated from one another. Resources in one Region are not automatically replicated to other Regions. When you store data in a specific Region, it is not replicated outside that Region. 

It is your responsibility to replicate data across Regions, if your business needs require it. 

AWS Regions that were introduced before March 20, 2019 are enabled by default. Regions that were introduced after March 20, 2019—such as Asia Pacific (Hong Kong) and Middle East (Bahrain)—are disabled by default. You must enable these Regions before you can use them. You can use the AWS Management Console to enable or disable a Region.

Some Regions have restricted access. An Amazon AWS (**China**) account provides access to the Beijing and Ningxia Regions only. To learn more about AWS in China, see: https://www.amazonaws.cn/en/about-aws/china/. The isolated **AWS GovCloud (US)** Region is designed to allow US government agencies and customers to move sensitive workloads into the cloud by addressing their specific regulatory and compliance requirements.

> [!NOTE]
> Snapshot from the infrastructure.awswebsite that shows a picture of downtown London including the Tower Bridge and the Shard. It notes that there are three Availability Zones in the London region. 

# 3 - Selecting a region

There are a few factors that you should consider when you select the optimal Region or Regions where you store data and use AWS services. 

One essential consideration is **data governance and legal requirements.** Local laws might require that certain information be kept within geographical boundaries. Such laws might restrict the Regions where you can offer content or services. For example, consider the European Union (EU) Data Protection Directive. 

All else being equal, it is generally desirable to run your applications and store your data in a Region that is as close as possible to the user and systems that will access them. This will help you **reduce latency.** CloudPing is one website that you can use to test latency between your location and all AWS Regions. To learn more about CloudPing, see: http://www.cloudping.info/

Keep in mind that not all services are available in all Regions. To learn more, see: https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=tgi&loc=4.

Finally, there is some variation in the cost of running services, which can depend on which Region you choose. For example, as of this writing, running an On-Demand t3.medium size Amazon Elastic Compute Cloud (Amazon EC2) Linux instance in the US East (Ohio) Region costs $0.0416 per hour, but running the same instance in the Asia Pacific (Tokyo) Region costs $0.0544 per hour.

# 4 - Availability zones

- Each Regionhas multiple Availability Zones.
- Each Availability Zoneis a fully isolated partition of the AWS infrastructure.
    - Availability Zones consist of discrete **data centers**
    - They are designed for fault isolation
    - They are interconnected with other Availability Zones by using high-speed private networking
    - You choose your Availability Zones.
    - **AWS recommends replicating data and resources across Availability Zones** for resiliency.

Each AWS Region has multiple, isolated locations that are known asAvailability Zones.

Each Availability Zone provides the ability to operate applications and databases that are more highly available, fault-tolerant, and scalable than would be possible with a single data center. Each Availability Zone can include multiple data centers (typically three), and at full-scale, they can include hundreds of thousands of servers. They are fully isolated partitions of the AWS Global Infrastructure. Availability Zones have their own power infrastructure, and they are physically separated by many kilometers from other Availability Zones—though all Availability Zones are within 100 km of each other.

All Availability Zones are interconnected with high-bandwidth, low-latency networking over fully redundant, dedicated fiber that provides high-throughput between Availability Zones. The network accomplishes synchronous replication between Availability Zones.

Availability Zones help build highly available applications. When an application is partitioned across Availability Zones, companies are better isolated and protected from issues such as lightning, tornadoes, earthquakes, and more.

You are responsible for selecting the Availability Zones where your systems will reside. Systems can span multiple Availability Zones. AWS recommends replicating across Availability Zones for resiliency. You should design your systems to survive the temporary or prolonged failure of an Availability Zone if a disaster occurs

# 5 - AWS data centers

- AWS data centers are **designed for security**.
- Data centers are where the data resides and data processing occurs.
- Each data center has redundant power, networking, and connectivity, and is housed in a separate facility.
- A data center typically has 50,000 to 80,000 physical servers.

The foundation for the AWS infrastructure is the data centers. Customers do not specify a data center for the deployment of resources. Instead, an Availability Zone is the most granular level of specification that a customer can make. However, a data center is the location where the actual data resides. Amazon operates state-of-the-art, highly available data centers. Although rare, failures can occur that affect the availability of instances in the same location. If you host all your instances in a single location that is affected by such a failure, none of your instances will be available.

Data centers are securely designed with several factors in mind:

Each location is carefully evaluated to **mitigate environmental risk.** 
- Data centers have a **redundant design** that anticipates and tolerates failure while maintaining service levels. 
- To ensure availability, **critical system components are backed up** across multiple Availability Zones. 
- To ensure capacity, AWS continuously monitors service usage to deploy infrastructure to support availability commitments and requirements. 
- Data center **locations are not disclosed** and all access to them is restricted.
- In case of failure, automated processes move data traffic away from the affected area. 

AWS uses **custom network equipment** sourced from **multiple original device manufacturers** **(ODMs).**ODMs design and manufacture products based on specifications from a second company. The second company then rebrands the products for sale.

# 6 - Points of presence

- AWS provides a global network of **Points of Presence** locations 
- Consists of **edge locations** and a much smaller number of **Regional edge caches**
- Used with Amazon CloudFront 
    - A global Content Delivery Network (CDN), that delivers content to end users with**reduced latency**
- Regional edge caches used for content with infrequent access.

**Amazon CloudFront** is **a content delivery network (CDN)** used to distribute content to end users to reduce latency. **Amazon Route 53** is a Domain Name System (DNS) service. Requests going to either one of these services will be routed to the nearest **edge location** automatically in order to lower latency.

**AWS Points of Presence** are located in most of the major cities around the world. By **continuously measuring internet connectivity, performance and computing to find the best** **way to route requests,**the Points of Presence deliver a better near real-time user experience. They are used by many AWS services, including Amazon CloudFront, Amazon Route 53, AWS Shield, and AWS Web Application Firewall (AWS WAF) services. 

**Regional edge caches** are used by default with Amazon CloudFront. Regional edge caches are used when you have content that is not accessed frequently enough to remain in an **edge** **location.** Regional edge caches absorb this content and provide an alternative to that content having to be fetched from the origin server.

# 7 - Infrastructure features

- Elasticity and scalability
    - Elastic infrastructure; dynamic adaption of capacity
    - Scalable infrastructure; adapts to accommodate growth 
- Fault-tolerance
    - Continues operating properly in the presence of a failure
    - Built-in redundancy of components
- High availability
    - High level of operational performance
    - Minimized downtime
    - No human intervention

Now that you have a good understanding of the major components that comprise the AWS Global Infrastructure, let's consider the benefits provided by this infrastructure.

The AWS Global Infrastructure has several valuable features:
- First, it is **elastic**and **scalable.** This means resources can dynamically adjust to increases or decreases in capacity requirements. It can also rapidly adjust to accommodate growth.
- Second, this infrastructure is **fault tolerant,** which means it has built-in component redundancy which enables it to continue operations despite a failed component.
- Finally, it requires minimal to no human intervention, while providing **high availability** with minimal down time.

# 8 - Key takeaways

Some key takeaways from this section of the module include:
- The **AWS Global Infrastructure**consists of **Regions** and **Availability Zones**.
- Your choice of a **Region**is typically based on **compliance requirements** or to **reduce latency**.
- Each **Availability Zone** is physically separate from other Availability Zones and has redundant power, networking, and connectivity.
- **Edge locations**, and **Regional****edge caches** improve performance by **caching**content closer to users.


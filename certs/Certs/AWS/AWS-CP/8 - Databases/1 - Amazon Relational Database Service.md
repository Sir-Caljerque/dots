# Unmanaged vs managed services

> [!Unmanaged]
> Scaling, fault tolerance, and availability are managed by you

> [!Managed]
> Scaling, fault tolerance, and availability are typically built into the service

AWS solutions typically fall into one of two categories: unmanaged or managed.

Unmanaged services are typically provisioned in discrete portions as specified by the user.You must manage how the service responds to changes in load, errors, and situations where resources become unavailable. Say that you launch a web server on an Amazon Elastic Compute Cloud (Amazon EC2) instance. Because Amazon EC2 is an unmanaged solution, that web server will not scale to handle increased traffic load or replace unhealthy instances with healthy onesunless you specify that it use a scaling solution, such as AWS Automatic Scaling. The benefit to using an unmanaged service is that you have more fine-tuned control over how your solution handles changes in load, errors, and situations where resources become unavailable.

Managed services require the user to configure them. For example, you createan Amazon Simple Storage Service (Amazon S3) bucket and then set permissions for it. However, managed services typically require less configuration. Say that youhave a static website that youhost in a cloud-based storage solution, such as Amazon S3. The staticwebsite does not have aweb server.However, because Amazon S3 is a managed solution,featuressuch as scaling, fault-tolerance, and availability would be handled automatically and internally by Amazon S3. 

Now, you will look at the challenges of running an unmanaged, standalone relational database. Then, you will learn how Amazon RDS addresses these challenges.

# Challenges of relational databases

- Server maintenance and energy footprint
- Software installation and patches
- Database backups and high availability
- Limits on scalability
- Sata security
- Operating system (OS) installation patches

When you run your own relational database, you are responsible for several administrative tasks, such as server maintenance and energy footprint, software, installation and patching, and database backups.You are also responsible for ensuring high availability, planning for scalability, data security, and operating system (OS) installation and patching. All these tasks take resources from other items on your to-do list, and require expertise in several areas.

# Amazon RDS

Managed service that sets up and operates a relational database in 
the cloud.
![[Pasted image 20240826014402.png]]

Amazon RDS is a managed service that sets up and operates a relational database in the cloud. 

To address the challenges of running an unmanaged, standalone relational database, AWS provides a service that sets up, operates, and scales the relational database without any ongoing administration. Amazon RDS provides cost-efficient and resizable capacity, while automating time-consuming administrative tasks. 

Amazon RDS enables you to focus on your application, so you can give applications the performance, high availability, security, and compatibility that they need. With Amazon RDS, your primary focus is your data and optimizing your application.

# From on-premises databases to Amazon RDS

![[Pasted image 20240826014632.png]]

What does the term **managed services**mean?

When your database is onpremises, the database administrator is responsible for everything.Database administration tasks include optimizing applications and queries; setting up the hardware; patching the hardware;setting up networkingand power; andmanaging heating, ventilation, and air conditioning (HVAC). 

If you move to a database that runs on an **Amazon Elastic Compute Cloud (Amazon EC2) instance**, you no longer need to manage the underlying hardware or handle data center operations. However, youare still responsible for patching the OS and handling all software and backup operations. 

If you set up your database on **Amazon RDS**or **Amazon Aurora**, you reduce your administrative responsibilities. By moving to the cloud, you can automatically scale your database, enable high availability, manage backups,and perform patching.Thus, you can focus on what really matters most—optimizing your application.

# Managed services responsibilities

**You manage:**
- Application optimization

**AWS manages:**
- OS installation and patches
- Database software installation and patches
- Database backups
- High availability
- Scaling
- Power and racking and stacking servers
- Server maintenance

With Amazon RDS, you manage your application optimization. AWS manages installing and patching the operating system, installing and patching the database software, automatic backups, and high availability. 

AWS also scales resources, manages power and servers, and performs maintenance. 

Offloading these operations to the managed Amazon RDS service reduces your operational workload and the costs that are associated with your relational database. You will nowgo through a brief overview of the service and a few potential use cases.

# Amazon RDS DB instances

**DB Instance Class**
- CPU
- Memory
- Network performance

**DB Instance Storage**
- Magnetic
- General Purpose (solid state drive, or SSD)
- Provisioned IOPS

The basic building block of Amazon RDS is the database instance. A database instance is an isolated database environment that can contain multiple user-created databases.It can be accessed by using the same tools and applications that you use with a standalone database instance. The resources in a database instance are determined by its database instance class, and the type of storage is dictated by the type of disks. 

Database instances and storage differ in performance characteristics and price, which enable you to customize your performance and cost to the needs of your database. When you choose to create a database instance, you must first specify which database engine to run. Amazon RDS currently supports six databases: MySQL, Amazon Aurora, Microsoft SQL Server, PostgreSQL, MariaDB, and Oracle.

# Amazon RDS in a virtual private cloud (VPC)

![[Pasted image 20240826015446.png]]

You can run an instance by using Amazon Virtual Private Cloud (Amazon VPC). When you use avirtual private cloud (VPC), you have control over your virtual networking environment. 

You can select your own IP address range, create subnets, and configure routing and access control lists (ACLs). The basic functionality of Amazon RDS is the same whether or not it runs in aVPC. Usually, the database instance is isolated in a private subnet and is only made directly accessible to indicated application instances. Subnets in aVPC are associated with a single Availability Zone, so when you select the subnet, youarealso choosing the Availability Zone (or physical location) for your database instance.

# High availability with Multi-AZ deployment

![[Pasted image 20240826015558.png]]

One of the most powerful features of Amazon RDS is the ability to configure your database instance for high availability with a Multi-AZ deployment. After aMulti-AZ deployment isconfigured, Amazon RDS automatically generates a standby copy of the database instance in another Availability Zone within the same VPC. After seeding the database copy, transactions are synchronously replicated to the standby copy. Running a database instance in a Multi-AZdeployment can enhance availability during planned system maintenance, and it can help protect your databases against database instance failure and Availability Zone disruption.

![[Pasted image 20240826015643.png]]

Therefore, if the main database instance fails in a Multi-AZ deployment, Amazon RDS automatically brings the standby database instance online as the new main instance. The synchronous replication minimizes the potential for data loss. Because your applications reference the database by name by using the Amazon RDS Domain Name System (DNS) endpoint, you don't need to change anything in your application code to use the standby copy for failover.

# Amazon RDS read replicas

**Features**
- Offers asynchronous replication 
- Can be promoted to primary if needed

**Functionality**
- Use for read-heavy database workloads
- Offload read queries

![[Pasted image 20240826015830.png]]

Amazon RDS also supports the creation of read replicas for MySQL, MariaDB, PostgreSQL, and Amazon Aurora. Updates that are made to the source database instance are asynchronously copied to the read replica instance. You can reduce the load on your source database instance by routing read queries from your applications to the read replica. Using read replicas, you can also scale out beyond the capacity constraints of a single database instance for read-heavy database workloads. Read replicas can also be promoted to become the primary database instance, but thisrequires manual action because of asynchronous replication. 

Read replicas can be created in a different Region than the primary database. This feature can help satisfy disaster recovery requirements or reduce latency by directing reads to a read replica that is closer to the user.

# Use cases

**Web and mobile applications**
- Highthroughput
- Massive storage scalability
- High availability

**Ecommerce applications**
- Low-cost database
- Data security
- Fully managed solution

**Mobile and online games**
- Rapidly grow capacity
- Automatic scaling
- Database monitoring

Amazon RDS works well for web and mobile applications that need a database with high throughput, massive storage scalability, and high availability. Because Amazon RDS does not have any licensing constraints, it fits the variable usage pattern of these applications. For small and large ecommerce businesses, Amazon RDS provides a flexible, secure, and low-cost database solution for online sales and retailing. Mobile and online games require a database platform with high throughput and availability. Amazon RDS manages the database infrastructure, so game developers donot need to worry about provisioning, scaling, or monitoring database servers.

# When to use Amazon RDS

***Use* Amazon RDS when your application requires:**
- Complex transactions or complex queries
- A medium to high query or write rate –Up to 30,000 IOPS (15,000 reads + 15,000 writes)
- No more than a single worker node or shard
- High durability

***Do not use* Amazon RDS when your application requires:**
- Massive read/write rates (for example, 150,000 write/second)
- Sharding due to high data size or throughput demands 
- Simple GET or PUT requests and queries that a NoSQL database can handle
- Relational database management system (RDBMS) customization

For circumstances when you should not use Amazon RDS, consider either using a NoSQL database solution (such as DynamoDB) or running your relational database engine on Amazon EC2 instances instead of Amazon RDS (which will provide you with more options for customizing your database).

# RDS: Clock-hour billing and database characteristics

**Clock-hour billing** 
- Reesources incur charges when running

**Database characteristics**
- Physical capacity of characteristics
    - Engine
    - Size
    - Memory class

When you begin to estimate the cost of Amazon RDS, you must consider the clock hours of service time, which are resources that incur charges when they are running(for example, from the time you launch a database instance until you terminate the instance). 

Database characteristics should also be considered. The physical capacity of the database you choose will affect how much you are charged. Database characteristics vary depending on the database engine, size, and memory class.

# RDS: DB purchase type and multiple db instances

**DB purchase type** 
- On-Demand Instances
- Compute capacity by the hour
- Reserved Instances
- Low, one-time, upfront payment for database instances that are reserved with a 1-year or 3-year term

**Number of DB instances** 
- Provision multiple DB instances to handle peak loads

Consider the database purchase type. When you use On-Demand Instances, you pay for compute capacity for each hour that your database instance runs, with no required minimum commitments. With Reserved Instances, you can make a low, one-time, upfront payment for each database instance you want to reserve for a 1-year or 3-year term. 

Also, you must consider the number of database instances. With Amazon RDS, you can provision multiple database instances to handle peak loads.

# RDS Storage

**Provisioned storage** 
- No charge
    - Backup storage of up to 100 percent of database storage for an active database
- Charge (GB/month)
    - Backup storage for terminated DB instances
**Additional storage** 
- Charge (GB/month)
    - Backup storage in addition to provisioned storage

Consider provisioned storage. There is no additional charge for backup storage of up to 100 percent of your provisioned database storage for an active database instance. After the database instance is terminated, backup storage is billed per GB, per month. 

Also consider the amount of backup storage in addition to the provisioned storage amount, which is billed per GB, per month.

# RDS: Deployment type and data transfer

**Requests** 
- The number of input and output requests that are made to the database

**Deployment type - Storage and I/O changes very, depending on whether you seploy to**
- Single Availability Zone
- Multiple Availability Zones

**Data transfer** 
- No charge for inbound data transfer
- Tiered charges for inbound data transfer

Alsoconsider the number of input and output requests that are made to the database.

Consider the deployment type. You can deploy your DB instance to a single Availability Zone (which is analogous to a standalone data center) or to multiple Availability Zones (which is analogous to a secondary data center for enhanced availability and durability). Storage and I/O charges vary, depending on the number of Availability Zones that you deploy to. 

Finally, consider data transfer. Inbound data transfer is free, and outbound data transfer costs are tiered. 

Depending on the needs of your application, it’s possible to optimize your costs for Amazon RDS database instances by purchasing ReservedInstances. To purchase Reserved Instances, you make a low, one-time payment for each instance that you want to reserve.As a result, youreceive a significantdiscount on the hourly usage charge for that instance.

# Key takeaways

- With Amazon RDS, you can set up, operate, and scale relational databases in the cloud.
- Features 
    - Managed service
    - Accessible via the console, AWS Command Line Interface (AWS CLI), or application programming interface (API) calls
    - Scalable (compute and storage)
    - Automated redundancy and backup are available
    - Supported database engines:
    - Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle, Microsoft SQL Server

Amazon RDS is a web service that makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while managing time-consuming database administration tasks so you can focus on your applications and your business.Features include that itisa managed service,and that it can be accessed via the console, AWS CommandLine Interface (AWS CLI), or application programming interface (API) calls. AmazonRDS isscalable for compute and storage, and automated redundancy and backup is available. Supported database engines include Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle, and Microsoft SQL Server.

Amazon RDS supports demanding database applications. You can choose between two solid state drive (SSD)-backed storage options: one optionis optimizedfor high-performance Online TransactionalProcessing(OLTP) applications, and the other optionworks well for cost-effective, general-purpose use. 

With Amazon RDS, you can scale your database’s compute and storage resources with no downtime. Amazon RDS runs on the same highly reliable infrastructure that is used by other AWS services. It also enables you to run your database instances and Amazon VPC, which is designed to provide you with control and security.

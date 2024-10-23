- Enterprise-class relational database
- Compatible with MySQLor PostgreSQL
- Automate time-consuming tasks (such as provisioning, patching, backup, recovery, failure detection, and repair).

Amazon Aurora is a MySQL-and PostgreSQL-compatible relational database that is built for the cloud. It combines the performance and availability of high-end commercial databases with the simplicity and cost-effectiveness of open-source databases. Using Amazon Aurora can reduce your database costs while improving the reliability and availability of the database. As a fully managed service, Aurora is designed to automate time-consuming tasks like provisioning, patching, backup, recovery, failure detection, and repair.

# Amazon Aurora  service benefits

![[Pasted image 20240826052725.png]]

This slide covers some of the benefits of Amazon Aurora. It is highly available and it offers a fast, distributed storage subsystem. Amazon Aurora is straightforward to set up and uses SQL queries. It is designed to have drop-in compatibility with MySQL and PostgreSQL database engines so that you can use most of your existing database tools with little or no change.

Amazon Aurora is a pay-as-you-go service, which means that you only pay for the services and features that you use. It’s a managed service that integrates with features such as AWSDatabase Migration Service (AWS DMS)and the AWS Schema Conversion Tool.These features are designed to help you move your dataset into Amazon Aurora.

# High availability

![[Pasted image 20240826052951.png]]

Why mightyou use Amazon Aurora over other options, like SQL with Amazon RDS? Most of that decision involves the high availability and resilient design that Amazon Aurora offers.

Amazon Aurora is designed to be highly available: it stores multiple copies of your data across multiple Availability Zones with continuous backups to Amazon S3. Amazon Aurora can use upto 15 read replicas can be used to reduce the possibility of losing your data. Additionally, Amazon Aurora is designed for instant crash recovery if your primary database becomes unhealthy.

# Resilient design

![[Pasted image 20240826053122.png]]

After a database crash, Amazon Aurora does not need to replay the redo log from the last database checkpoint. Instead, it performs this on every read operation. This reduces the restart time after a database crash to less than 60 seconds in most cases.

With Amazon Aurora, the buffer cache is moved out of the database process, which makes it available immediately at restart. This reduces the need for you to throttle access until the cache is repopulated to avoid brownouts.

# Key takeaways

Amazon Aurora features:
- High performance and scalability
- High availability and durability
- Multiple levels of security
- Compatible with MySQL and PostgreSQL
- Fully managed

In summary, Amazon Aurora is a highly available, performant,and cost-effective managed relational database.

Aurora offers a distributed,high-performance storage subsystem. Using Amazon Aurora can reduce your database costs while improving the reliability of the database. 

Aurora is also designed to be highly available. It has fault-tolerant and self-healing storage built for the cloud.Aurora replicates multiple copies of your data across multiple Availability Zones,and it continuously backs up your data to Amazon S3. 

Multiple levels of security are available, including network isolation byusing Amazon VPC; encryption at rest by using keys that you create and control through AWS Key Management Service (AWS KMS);and encryption of data in transit by using Secure Sockets Layer (SSL).

The Amazon Aurora database engine is compatible with existing MySQL and PostgreSQL open source databases, and adds compatibility for new releases regularly.

Finally, Amazon Aurora is fully managed by Amazon RDS. Auroraautomates database management tasks, such as hardware provisioning, software patching, setup, configuration, or backups.

To learn more about Amazon Aurora, seehttps://aws.amazon.com/rds/aurora/.

# The right tool for the job

![[Pasted image 20240826053654.png]]

As you saw in this module, the cloud continues to drive down the cost of storage and compute. A new generation of applications has emerged, which created a new set of requirements for databases. These applications need databases to store terabytes to petabytes of new types of data, provide access to the data with millisecond latency, process millions of requests per second, and scale to support millions of users anywhere in the world. To support these requirements, you need both relational and non-relational databases that are purpose-built to handle the specific needs of your applications. AWS offers a broad range of databases that are built for your specific application use cases.

# Database case study activity

> [!Case 1]
> A data protection and management company that provides services to enterprises. They must provide database services for over 55 petabytes of data. They have two types of data that require a database solution. First, they need a relational database store for configuration data. Second, they need a store for unstructured metadata to support a de-duplication service. After the data is de-duplicated, it is stored in Amazon S3 for quick retrieval, and eventually moved to Amazon S3 Glacier for long-term storage. The following diagram illustrates their architecture.

![[Pasted image 20240826171207.png]]

In this activity, you will review one of three business scenarios that were taken from actual AWS customers. Break into groups of four or five. 

Review the assigned case study. Create a presentation thatdescribes the best database solution for the organization thatisdescribed in your group’s case. Your presentation should include the key factors that you considered when you selected the database technology, in addition to any factors that could change your recommendation.

> [!Case 2]
> A commercial shipping company that uses an on-premises legacy data management system. They must migrate to a serverless ecosystem while they continue to use their existing database system, which is based on Oracle. They are also in the process of decomposing their highly structured relational data into semistructured data. The following diagram illustrates their architecture.


![[Pasted image 20240826171509.png]]

Review the assigned case study. Create a presentation that describes the best database solution for the organization that is described in your group’s case. Your presentation should include the key factors that you considered when you selected the database technology, in addition to any factors that could change your recommendation.

> [!Case 3]
> An online payment processing company that processes over1 million transactions per day. They must provide services to ecommerce customers who offer flash sales (sales that offer greatly reduced prices for a limited time), where demand can increase by 30 times in a short time period. They use IAM and AWS KMS to authenticate transactions with financial institutions. They need high throughput for these peak loads. The following diagram illustrates their architecture.

![[Pasted image 20240826171714.png]]

Review the assigned case study. Create a presentation thatdescribes the best database solution for the organization thatisdescribed in your group’s case. Your presentation should include the key factors thatyou considered when you selected the database technology, in addition to any factors that could change your recommendation.

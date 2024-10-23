# Intro to Amazon Redshift

!![[Pasted image 20240826051047.png]]

Analytics is important for businesses today, but building a data warehouse is complex and expensive. Data warehouses cantake months and significant financial resources to set up.

Amazon Redshift is a fast and powerful, fullymanaged data warehouse that is simple and cost-effective to set up, use, and scale. It enables you to run complex analytic queries against petabytes of structured data by using sophisticated query optimization, columnar storage on high-performance local disks, and massively parallel data processing. Most results come back in seconds.

You will next review a slightly more detailed exploration of key Amazon Redshift features and some common use cases.

# Parallel processing archictecture

![[Pasted image 20240826051256.png]]

The leader node manages communications with client programs and all communication with compute nodes. It parses and develops plans to carry out database operations—specifically, the series of steps that are needed to obtain results for complex queries. The leader node compiles code for individual elements of the plan and assigns the code to individual compute nodes. The compute nodes run the compiled code and send intermediate results back to the leader node for final aggregation.

Like other AWS services, you only pay for what you use. You can get started for as little as 25 cents per hour and, at scale, Amazon Redshift can deliver storage and processing for approximately $1,000 dollars per terabyte per year (with 3-Year PartialUpfront Reserved Instance pricing). 

The Amazon Redshift Spectrum feature enables you to run queries against exabytes of data directly in Amazon S3.

# Automation and scaling

It is straightforward to automate most of the common administrative tasks to manage, monitor, and scale your Amazon Redshift cluster—whichenables you to focus on your data and your business. 

Scalability is intrinsic in Amazon Redshift.Your cluster can be scaled up and down as your needs change with a few clicks in the console.

Security is the highest priority for AWS. With Amazon Redshift, security is builtin, and it is designed to provide strong encryption of your data both at rest and in transit.

# Compatibility

![[Pasted image 20240826051531.png]]

Finally, Amazon Redshift is compatible with the tools that you already know and use. Amazon Redshift supports standard SQL. Italso provides high-performance Java Database Connectivity (JDBC) and Open Database Connectivity (ODBC) connectors, which enable you to use the SQL clients and BI tools of your choice.

Next, you will review some common Amazon Redshift use cases.

# Amazon Redshift use cases

- Enterprise data warehouse (EDW)
    - Migrate at a pace that customers are comfortable with
    - Experiment without large up front cost or commitment
    - Respond faster to business needs
- Big data
    - Low price point for small customers
    - Managed service for ease of deployment and maintenance
    - Focus more on data and lesson data base management

Many customers migrate their traditional enterprise data warehouses to Amazon Redshift with the primary goal of agility. Customers can start at whatever scale they want and experiment with their data without needing to rely on complicated processes with their IT departments to procure and prepare their software.

Big data customers have one thing in common: massive amounts of data that stretch their existing systems to a breaking point. Smaller customers might not have the resources toprocure the hardware and expertise that is needed to run these systems. With Amazon Redshift, smaller customers can quickly set upand useadata warehouse at a comparatively low price point.

As a managed service, Amazon Redshift handles many of the deployment and ongoing maintenance tasks that often require a database administrator. This enablescustomersto focus on querying and analyzing their data.

- Software as a service
    - Scale the data warehouse capacity as demand grows
    - Add analytic functionality to applications
    - Reduce hardware and software costs

Software as a service (SaaS) customers can take advantage of the scalable, easy-to-manage features that Amazon Redshift provides. Some customers use the Amazon Redshift to provide analytic capabilities to their applications. Some users deploy a cluster per customer, and use tagging to simplify and manage their service level agreements (SLAs) and billing. Amazon Redshift canhelp you reduce hardware and software costs.

# Key takeaways

Amazon Redshift features:
- Fast, fully managed data warehouse service
- Easily scale with no downtime
- Columnar storage and parallel processing architectures
- Automatically and continuously monitors cluster
- Encryption is built in

In summary, Amazon Redshift is a fast, fully managed data warehouse service. As a business grows, you can easily scale with no downtime by adding more nodes. Amazon Redshift automatically adds the nodes to your cluster and redistributes the data for maximum performance.

Amazon Redshift is designedto consistently deliver high performance. Amazon Redshift uses columnar storage and a massively parallel processing architecture. These features parallelize and distribute data and queries across multiple nodes. AmazonRedshift also automatically monitors your cluster and backs up your data so thatyou can easily restore if needed. Encryption is built in—you only need to enable it.

To learn more about Amazon Redshift, see https://aws.amazon.com/redshift/.

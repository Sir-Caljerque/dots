 Companies need the ability to simply and securely collect, store, and analyze their data on a massive scale. Amazon S3 is object storage that is built to store and retrieve any amount of data from anywhere: websites and mobile apps, corporate applications, and data from Internet of Things (IoT) sensors or devices.

# Storage

Amazon S3 is object-level storage, which means that if you want to change a part of a file, you must make the change and the re-upload the entire modified file. Amazon S3 stores data as objects within resources that are called **buckets**

# Amazon S3 overview

- Data is stored as objects in buckets
- Virtually unlimited storage
    - Single object is limited to 5TB
- Designed for 11 9s of durability
- Granular access to bucker and objects

Amazon S3 is a managed cloud storage solution that is designed to scale seamlessly and provide 11 9s of durability. You can store virtually as many objects as you want in a bucket, and you can write, read, and delete objects in your bucket. Bucket names are universal and must be uniqueacross all existing bucket names in Amazon S3. Objects can be up to 5 TB in size. By default, data in Amazon S3 is stored redundantly across multiple facilities and multiple devices in each facility.

The data that you store in Amazon S3 is not associated with any particular server, and you do not need manage any infrastructure yourself. You can put as many objects into Amazon S3 as you want. Amazon S3 holds trillions of objects and regularly peaks at millions of requests per second. 

Objects can be almost any data file, such as images, videos, or server logs. Because Amazon S3 supports objects as large as several terabytes in size, you can even store database snapshots as objects. Amazon S3 also provides low-latency access to the data over the internet by Hypertext Transfer Protocol (HTTP) or Secure HTTP (HTTPS), so you can retrieve data anytime from anywhere. You can also access Amazon S3 privately through a virtual private cloud (VPC) endpoint. You get fine-grained control over who can access your data by using AWS Identity and Access Management (IAM) policies, Amazon S3 bucket policies, and even per-object access control lists. 

By default, none of your data is shared publicly. You can also encrypt your data in transit and choose to enable server-side encryption on your objects. You can access Amazon S3 through the web-based AWS Management Console; programmatically through the API and SDKs; or with third-party solutions, which use the API or the SDKs.

Amazon S3 includes event notifications that enable you to set up automatic notifications when certain events occur, such as when an object is uploaded to a bucket or deleted from a specific bucket. Those notifications can be sent to you, or they can be used to trigger other processes, such as AWS Lambda functions.

With storage class analysis, you can analyze storage access patterns and transition the right data to the right storage class. The Amazon S3 Analytics feature automatically identifies the optimal lifecycle policy to transition less frequently accessed storage to Amazon S3 Standard –Infrequent Access (Amazon S3 Standard-IA). You can configure a storage class analysis policy to monitor an entire bucket, a prefix, or an object tag. 

When an infrequent access pattern is observed, you can easily create a new lifecycle age policy that is based on the results. Storage class analysis also provides daily visualizations of your storage usage in the AWS Management Console. You can export them to an Amazon S3 bucket to analyze by using the business intelligence (BI) tools of your choice, such as Amazon QuickSight.

# Amazon S3 storage classes

Amazon S3 offers a range of object-level storage classes that are designed for different use cases:
- Amazon S3 Standard
- Amazon S3 Intelligent-Tiering
- Amazon S3 Standard-Infrequent Access (Amazon S3 Standard-IA)
- Amazon S3 One Zone-Infrequent Access (Amazon S3 One Zone-IA)
- Amazon S3 Glacier 
- Amazon S3 Glacier Deep Archive

Amazon S3 offers a range of object-level storage classes that are designed for different use cases. These classes include:
- **Amazon S3 Standard** –Amazon S3 Standard is designed for high durability, availability, and performance object storage for frequently accessed data. Because it delivers low latency and high throughput, Amazon S3 Standard is appropriate for a variety of use cases, including cloud applications, dynamic websites, content distribution, mobile and gaming applications, and big data analytics.
- **Amazon S3 Intelligent-Tiering**–The Amazon S3 Intelligent-Tiering storage class is designed to optimize costs by automatically moving data to the most cost-effective access tier, without performance impact or operational overhead. For a small monthly monitoring and automation fee per object, Amazon S3 monitors access patterns of the objects in Amazon S3 Intelligent-Tiering, and moves the objects that have not been accessed for 30 consecutive days to the infrequent access tier. If an object in the infrequent access tier is accessed, it is automatically moved back to the frequent access tier. There are no retrieval fees when you use the Amazon S3 Intelligent-Tiering storage class, and no additional fees when objects are moved between access tiers. It works well for long-lived data with access patterns that are unknown or unpredictable.
- **Amazon S3 Standard-Infrequent Access (Amazon S3 Standard-IA)** –The Amazon S3 Standard-IA storage class is used for data that is accessed less frequently, but requires rapid access when needed. Amazon S3 Standard-IA is designed to provide the high durability, high throughput, and low latency of Amazon S3 Standard, with a low per-GB storage price and per-GB retrieval fee. This combination of low cost and high performance makes Amazon S3 Standard-IA good for long-term storage and backups, and as a data store for disaster recovery files. 
- **Amazon S3 One Zone-Infrequent Access (Amazon S3 One Zone-IA)** –Amazon S3 One Zone-IA is for data that is accessed less frequently, but requires rapid access when needed. Unlikeother Amazon S3 storage classes, which store data in a minimum of three Availability Zones, Amazon S3 One Zone-IA stores data in a single Availability Zone and it costs less than Amazon S3 Standard-IA. Amazon S3 One Zone-IA works well for customers who want a lower-cost option for infrequently accessed data, but do not require the availability and resilience of Amazon S3 Standard or Amazon S3 Standard-IA. It is a good choice for storing secondary backup copies of on-premises data or easily re-creatable data. You can also use it as cost-effective storage for data that is replicated from another AWS Region by using Amazon S3 Cross-Region Replication.
- **Amazon S3 Glacier** –Amazon S3 Glacier is a secure, durable, and low-cost storage class for data archiving. You can reliably store any amount of data at costs that are competitive with—or cheaper than—on-premises solutions. To keep costs low yet suitable for varying needs, Amazon S3 Glacier provides three retrieval options that range from a few minutes to hours. You can upload objects directly to Amazon S3 Glacier, or use Amazon S3 lifecycle policies to transfer data between any of the Amazon S3 storage classes for active data (Amazon S3 Standard, Amazon S3 Intelligent-Tiering, Amazon S3 Standard-IA, and Amazon S3 One Zone-IA) and Amazon S3 Glacier.
- **Amazon S3 Glacier Deep Archive** –Amazon S3 Glacier Deep Archive is the lowest-cost storage class for Amazon S3. It supports long-term retention and digital preservation for data that might be accessed once or twice in a year. It is designed for customers—particularly customers in highly regulated industries, such as financial services, healthcare, and public sectors—that retain datasets for 7–10 years (or more) to meet regulatory compliance requirements. Amazon S3 Glacier Deep Archive can also be used for backup and disaster recovery use cases. It is a cost-effective and easy-to-manage alternative to magnetic tape systems, whether these tape systems are on-premises libraries or off-premises services. Amazon S3 Glacier Deep Archive complements Amazon S3 Glacier, and it is also designed to provide 11 9s of durability. All objects that are stored in Amazon S3 Glacier Deep Archive are replicated and stored across at least three geographically dispersed Availability Zones, and these objects can be restored within 12 hours.

For more information about Amazon S3storage classes, see https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html.

# Amazon S3 bucket URLs (2 styles)

To upload your data:
1. Create a *bucket* in an AWS Region
2. Upload almost any number of *objects* to the bucket

Bucket path-style URL endpoint
**https:\/\/s3.<u>Region-code</u>.amazonaws.com/<u>bucket-name</u>**

Bucket virtual hosted-style URL endpoint
**https://<u>bucket-name</u>.s3-<u>Region-code</u>.amazonaws.com**

![[Pasted image 20240820192504.png]]

To use Amazon S3 effectively, you must understand a few simple concepts. First, Amazon S3 stores data inside **buckets**. Buckets are essentially the prefix for a set of files, and must be uniquely named across all of Amazon S3 globally. Buckets are logical containers for objects. You can have one or more buckets in your account. You can control access for each bucket—who can create, delete, and list objects in the bucket. You can also view access logs for the bucket and its objects, and choose the geographical region where Amazon S3 stores the bucket and its contents. 

To upload your data (such as photos, videos, or documents), create a bucket in an AWS Region, and then upload almost any number of objects to the bucket. 

In the example, Amazon S3 was used to create a bucket in the Tokyo Region, which is identified within AWS formally by its Region code: ap-northeast-1

The URL for a bucket is structured like the examples. You can use two different URL styles to refer to buckets.

Amazon S3 refers to files as objects. As soon as you have a bucket, you can store almost any number of objects inside it. An object is composed of data and any metadata that describes that file, including a URL. To store an object in Amazon S3, you upload the file that you want to store to a bucket. 

When you upload a file, you can set permissions on the data and any metadata. 

In this example, the object Preview2.mp4 is stored inside the bucket. The URL for the file includes the object name at the end.

# Data is redundantly stored in the Region

![[Pasted image 20240820192745.png]]

When you create a bucket in Amazon S3, it is associated with a specific AWS Region. When you store data in the bucket, it is redundantly stored across multiple AWS facilities within your selected Region. 

Amazon S3 is designed to durably store your data, even if there is concurrent data loss in two AWS facilities.

# Designed for seamless scaling

![[Pasted image 20240820193443.png]]

Amazon S3 automatically manages the storage behind your bucket while your data grows. You can get started immediately, and your data storage will grow with your application needs. 

Amazon S3 also scales to handle a high volume of requests. You do not need to provision the storage or throughput, and you are billed only for what you use. 

# Access the data anywhere

![[Pasted image 20240820193556.png]]

You can access Amazon S3 through the console, AWS Command Line Interface (AWS CLI), or AWS SDK. You can also access the data in your bucket directly by using REST-based endpoints. 

The endpoints support HTTP or HTTPS access. To support this type of URL-based access, Amazon S3 bucket names must be globally unique and Domain Name Server (DNS)-compliant. 

Also, object keys should use characters that are safe for URLs.

# Common use cases

- Storing application assets
- Static web hosting
- Backup and disaster recovery (DR)
- Staging area for big data
- Many more

This flexibility to store a virtually unlimited amount of data—and to access that data from anywhere—means that Amazon S3 is suitable for a variety of scenarios. You will now consider some use cases for Amazon S3:
- As a location for any application data, Amazon S3 buckets provide a shared location for storing objects that any instances of your application can access—including applications on Amazon EC2 or even traditional servers. This feature can be useful for user-generated media files, server logs, or other files that your application must store in a common location. Also, because the content can be fetched directly over the internet, you can offload serving that content from your application and enable clients to directly fetch the data from Amazon S3 themselves. 
- For static web hosting, Amazon S3 buckets can serve the static contents of your website, including HTML, CSS, JavaScript, and other files. 
- The high durability of Amazon S3 makes it a good candidate for storing backups of your data. For greater availability and disaster recovery capability, Amazon S3 can even be configured to support cross-Region replication so that data in an Amazon S3 bucket in one Region can be automatically replicated to another Amazon S3 Region.

# Amazon S3 common scenarios

![[Pasted image 20240820194008.png]]

**Backup and storage** - Provide data backup and storage services
**Application hosting** - Provide services that deploy, install, and manage web applications
**Media hosting** - Build a redundand, scalable, and highly available infrastructure that hosts video, photo, or music uploads and downloads
**Software delivery** - Host your software applications that customers can download

# Amazon S3

- Pay only for what you use, including
    - GBs per month
    - Tranfer OUT to other Regions
    - PUT, COPY, POST, LIST, and GET requests
- You do not pay for
    - Transfers IN to Amazon S3
    - Transfers OUT from Amazon S3 to Amazon CloudFront or Amazon EC2 in the same Region

With Amazon S3, specific costs vary depending on the Region and the specific requests that were made. You pay only for what you use, including gigabytes per month; transfer out of other Regions; and PUT, COPY, POST, LIST, and GET requests. 

As a general rule, you pay only for transfers that cross the boundary of your Region, which means you do not pay for transfers in to Amazon S3 or transfers out from Amazon S3 to Amazon CloudFront edge locations within that same Region.

# S3 Storage pricing

When you begin to estimate the costs of Amazon S3, you must consider the following:
1. **Storage class type**
    - **Standard storage** is designed to provide **11 9s of durability** and **four 9s of availability**.
    - **S3 Standard – Infrequent Access (S-IA)** is a storage option within Amazon S3 that you can use to reduce your costs by storing less frequently accessed data at slightly lower levels of redundancy than Amazon S3 standard storage. Standard –Infrequent Access is designed to provide the same **11 9s of durability** as Amazon S3, with **three 9s of availability** in a given year. Each class has different rates.
2. **Amount of storage** – The number and size of objects stored in your Amazon S3 buckets.
3. **Requests** - Consider the number and type of requests. GET requests incur charges at different rates than other requests, such as PUT and COPY requests.
    - **GET** – Retrieves an object from Amazon S3. You must have READ access to use this operation.
    - **PUT** – Adds an object to a bucket. You must have WRITE permissions on a bucket to add an object to it.
    - **COPY** – Creates a copy of an object that is already stored in Amazon S3. A COPY operation is the same as performing a GET and then a PUT.
4. **Data transfer** – Consider the amount of data that is transferred out of the Amazon S3 Region. Remember that data transfer in is free, but there is a charge for data transfer out.

# Key takeaways

- Amazon S3 is a fully managed cloud storage service.
- You can store a virtually unlimited number of objects.
- You pay for only what you use.
- You can access Amazon S3 at any time from anywhere through a URL.
- Amazon S3 offers rich security controls.

To learn more about Amazon S3, see https://aws.amazon.com/s3/.

# Glacier review

Amazon S3 Glacier is a **data archiving service**that is designed for **security**, **durability**, and an **extremely low cost**.

- Amazon S3 Glacier is designed to provide 11 9s of durability for objects.
- It supports the encryption of data in transit and at rest through Secure Sockets Layer (SSL) or Transport Layer Security (TLS).
- The Vault Lock feature enforces compliance through a policy.
- Extremely low-cost design works well for long-term archiving.
  - Provides three options for access to archives—expedited, standard, and bulk—retrieval times range from a few minutes to several hours.

When you use Amazon S3 Glacier to archive data, you can store your data at an extremely low cost (even in comparison to Amazon S3), but you cannot retrieve your data immediately when you want it.

Data that is stored in Amazon S3 Glacier can take several hours to retrieve, which is why it works well for archiving.

There are three key Amazon S3 Glacier terms you should be familiar with:

- **Archive** – Any object (such as a photo, video, file, or document) that you store in Amazon S3 Glacier. It is the base unit of storage in Amazon S3 Glacier. Each archive has its own unique ID and it can also have a description.
- **Vault** – A container for storing archives. When you create a vault, you specify the vault name and the Region where you want to locate the vault.
- **Vault access policy** – Determine who can and cannot access the data that is stored in the vault, and what operations users can and cannot perform. One vault access permissions policy can be created for each vault to manage access permissions for that vault. You can also use a vault lock policy to make sure that a vault cannot be altered. Each vault can have one vault access policy and one vault lock policy that are attached to it.

You have three options for retrieving data, each with varying access times and cost:

- **Expedited** retrievals are typically made available within 1–5 minutes (highest cost).
- **Standard** retrievals typically complete within 3–5 hours (less time than expedited, more time than bulk).
- **Bulkret** rievals typically complete within 5–12 hours (lowest cost).

You might compare these options to choosing the cost for shipping a package by using the most economical method for your needs.

# Amazon S3 Glacier

- Storage service for low-cost data archiving and long-term backup
- You can configure lifecycle archiving of Amazon S3 content to Amazon S3 Glacier
- Retrieval options – - Standard: 3–5 hours - Bulk: 5–12 hours - Expedited: 1–5 minutes
  ![[Pasted image 20240822013934.png]]

Amazon S3 Glacier's data archiving means that although you can store your data at an extremely low cost (even in comparison to Amazon S3), you cannot retrieve your data immediately when you want it.

Data stored in Amazon S3 Glacier can take several hours to retrieve.

You should be familiar with three key Amazon S3 Glacier terms:

- Archive:Any object such as a photo, video, file, or document that you store in Amazon S3 Glacier. It is the base unit of storage in Amazon S3 Glacier. Each archive has its own unique ID and can also have a description.
- Vault:A container for storing archives. When you create a vault, you specify the vault name and the region in which you would like to locate the vault.
- Vault Access Policy: Determine who can and cannot access the data stored in the vault and what operations users can and cannot perform. One vault access policy can be created for each vault to manage access permissions for that vault. You can also use a vault lock policy to make sure a vault cannot be altered. Each vault can have one vault access policy and one vault lock policy that is attached to it.

Three options are available for retrieving data with varying access times and cost: expedited, standard, and bulk retrievals. They are listed as follows:

- Expedited retrievals are typically made available within 1 –5 minutes (highest cost).
- Standard retrievals typically complete within 3 –5 hours (less than expedited, more than bulk).
- Bulkret rievals typically complete within 5 –12 hours (lowest cost).

Compare it to choosing the cost to most economically ship a package.

# Amazon S3 Glacier use cases

![[Pasted image 20240822014408.png]]

**Media asset archiving**Media assets—such as video and news footage—require durable storage and can grow to many petabytes over time. Amazon S3 Glacier enables you to archive older media content affordably and then move it to Amazon S3 for distribution when it is needed.

**Healthcare information archiving**To meet regulatory requirements, hospital systems must retain petabytes of patient records—such as Low-Income Subsidy (LIS) information, picture archiving and communication system (PACS) data, or Electronic Health Records (EHR)—for decades. Amazon S3 Glacier can help you reliably archive patient record data securely at a very low cost.

**Regulatory and compliance archiving**Many enterprises, like those in financial services and healthcare, must retain regulatory and compliance archives for extended durations. Amazon S3 Glacier Vault Lock can help you set compliance controls so you can work towards meeting your compliance objectives, such as the U.S. Securities and Exchange Commission (SEC) Rule 17a-4(f).

**Scientific data archiving**Research organizations generate, analyze, and archive large amounts of data. By using Amazon S3 Glacier, you can reduce the complexities of hardware and facility management and capacity planning.

**Digital preservation**Libraries and government agencies must handle data integrity challenges in their digital preservation efforts. Unlike traditional systems—which can require laborious data verification and manual repair—Amazon S3 Glacier performs regular, systematic data integrity checks, and it is designed to be automatically self-healing.

# Using Amazon S3 Glacier

![[Pasted image 20240822014627.png]]

To store and access data ib Anazib S3 Glacier, you can use the AWS Management Console. However, only a few operations - only a few operations - such as creating and deleting vaults, and creating and managing archive policies - are available in the console

For almost all other operations and interactions with Amazon S3 Glacier, you can use the either the Amazon S3 glacier REST APIs, the AWS Java or .NET SDKs, or the AWS CLI

You can also use lifecycle policies to archive data into Amazon s3 Glacier. Next, you will learn about lifecycle policies

# Lifecycle policies

_Amazon S3 lifecycle policies_ enable you to delete or move objects based on age
![[Pasted image 20240822015630.png]]

You should automate the lifecycle of the data that you store in Amazon S3. By using lifecycle policies, you can cycle data at regular intervals between different Amazon S3 storage types. This automation reduces your overall cost, because you pay less for data as it becomes less important with time.

In addition to setting lifecycle rules per object, you can also set lifecycle rules per bucket.

Consider an example of a lifecycle policy that moves data as it ages from **Amazon S3 Standard** to **Amazon S3 Standard –Infrequent Access**, and finally, into Amazon S3 Glacier before it is deleted. Suppose that a user uploads a video to your application and your application generates a thumbnail preview of the video. This video preview is stored to Amazon S3 Standard, because it is likely that the user wants to access it right away.

Your usage data indicates that most thumbnail previews are not accessed after 30 days. Your lifecycle policy takes these previews and moves them to Amazon S3 –Infrequent Access after 30 days. After another 30 days elapse, the preview is unlikely to be accessed again. The preview is then moved to Amazon S3 Glacier, where it remains for 1 year. After 1 year, the preview is deleted. The important thing is that the lifecycle policy manages all this movement automatically.

To learn more about object lifecycle management, see http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html

# Storage comparison

| Amazon S3                      | Amazon S3 Glacier      |
| ------------------------------ | ---------------------- |
| No limit                       | No limit               |
| ms                             | minutes/hours          |
| 5Tb maximum                    | 40TB maximum           |
| higher cost                    | lower cost             |
| PUT, COPY, POST, LIST, and GET | UPLOAD and retrieval   |
| Per request                    | per request and per GB |

While **Amazon S3**and **Amazon S3 Glacier**are both object storage solutions that enable you to store a virtually unlimited amount of data, they have some critical differences between them. The chart outlines some of these differences.

1. Be careful when you decide which storage solution is correct for your needs. These two services serve very different storage needs. Amazon S3 is designed for frequent, low-latency access to your data, but Amazon S3 Glacier is designed for low-cost, long-term storage of infrequently accessed data.
2. The maximum item size in Amazon S3 is 5 TB, but Amazon S3 Glacier can store items that are up to 40 TB.
3. Because Amazon S3 gives you faster access to your data, the storage cost per gigabyte is higher than it is with Amazon S3 Glacier. 
4. While both services have per-request charges, Amazon S3 charges for **PUT, COPY, POST, LIST, GET** operations. In contrast, Amazon S3 Glacier charges for **UPLOAD**and **retrieval**operations.
5. Because Amazon S3 Glacier was designed for less-frequent access to data, it costs more for each retrieval request than Amazon S3.

# Server-side encryption

![[Pasted image 20240822040248.png]]

Another important difference between Amazon S3and Amazon S3Glacier is how data is encrypted. Server-side encryption is focused on protecting data at rest. With both solutions, you can securely transfer your data over HTTPS. Any data that is archived in Amazon S3Glacier is encrypted by default. With Amazon S3, your application must initiate server-side encryption. You can accomplish server-side encryption in Amazon S3in several ways:
- Server-side encryption with **Amazon S3-managed encryption keys (SSE-S3)** employs strong multi-factor encryption. Amazon S3encrypts each object with a unique key. As an additional safeguard, it encrypts the key with a main key that it regularly rotates. Amazon S3server-side encryption uses one of the strongest block ciphers available, 256-bit Advanced Encryption Standard (AES-256), to encrypt your data.
- Using server-side encryption with **Customer-provided Encryption Keys (SSE-C)** enables you to set your own encryption keys. You include the encryption key as part of your request, and Amazon S3manages both encryption (as it writes to disks), and decryption (when you access your objects).
- Using server-side encryption with **AWS Key Management Service (AWS KMS)** is a service that combines secure, highly available hardware and software to provide a key management system that is scaled for the cloud. AWS KMS uses **Customer Master Keys (CMKs)** to encrypt your Amazon S3objects. You use AWS KMS through the **Encryption Keys** section in the IAM console. You can also access AWS KMS through the API to centrally create encryption keys, define the policies that control how keys can be used, and audit key usage to prove that they are being used correctly. You can use these keys to protect your data in Amazon S3buckets.

# Security with Amazon S3 Glacier

![[Pasted image 20240822050407.png]]

by default, only you can access your data. You can enable and control access to your data in Amazon S3 Glacier by using IAM.  You set up an IAM policy that specifies user access

# Key takeaways

- Amazon S3 Glacier is a data archiving service that is designed for security, durability, and an extremely low cost.
- Amazon S3 Glacier pricing is based on Region.
- Its extremely low-cost design works well for long-term archiving. 
- The service is designed to provide 11 9s of durability for objects.

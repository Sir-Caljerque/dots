# Relational versus non-relational databases

![[Pasted image 20240826044008.png]]

With DynamoDB, this module transitions from relational databases to non-relational databases. 

Here is a review of the differences between these two types of databases:
- A **relational database** (RDB) works with structured data that is organized by tables, records, and columns. RDBs establish a well-defined relationship between database tables. RDBs use structured query language (SQL), which is a standard user application that provides aprogramming interface for database interaction. Relational databases might have difficulties scaling out horizontallyor working with semistructureddata, and mightalso require many joins for normalized data.
- A**non-relational database**is any database that does not follow the relational model that is provided by traditional relational database management systems (RDBMS). Non-relational databases have grown in popularity because they were designed to overcome the limitations of relational databases for handling the demands of variable structured data. Non-relational databases scale out horizontally,and they can work with unstructured and semistructureddata.

Here is a look at what DynamoDB offers.

# What is Amaozn DynamoDB

Fast and flexible database service for any scale

- NoSQL database tables
- Virtually unlimited storage
- Items can have differing attributes
- Low-latency queries
- Scalable read/write throughput

DynamoDB is a fast and flexible NoSQL databaseservice for all applications that need consistent, single-digit-millisecond latency at any scale. 

Amazon manages all the underlying data infrastructure for this service and redundantly stores data across multiple facilities in a native US Region as part of the fault-tolerant architecture. With DynamoDB, you can create tables and items. You can add items to a table. The system automatically partitions your data and has table storage to meet workload requirements. There is no practical limit on the number of items that you can store in a table. For instance, some customers have production tables that contain billions of items. 

One of the benefits of a NoSQL database is that items in the same table can have different attributes. This gives you the flexibility to add attributes as your application evolves. You can store newer format items side by side with older format items in the same table without needing to perform schema migrations.

As your application becomes more popular and as users continue to interact with it, your storage can grow with your application's needs. All the data in DynamoDB is stored on solid state drives (SSDs) and its simple query language enables consistent low-latency query performance. In addition to scaling storage, DynamoDB also enables you to provision the amount of read or write throughput that you need for your table. As the number of application users grows, DynamoDB tables can be scaled to handle the increased numbers of read/write requests with manual provisioning. Alternatively, you can enable automatic scaling so that DynamoDB monitors the load on the table and automatically increases or decreases the provisioned throughput. Some additional key features include global tables that enable you to automatically replicate across your choise of AWS regions, encryption at rest, and item Time-to-Live (TTL)

# Amazon DynamoDB core components

- Tables, items, and attributes are the core DynamoDB components
- DynamoDB supports 2 different kinds of primary keys: Partition key and partition and sort key

The core DynamoDB components are tables, items, and attributes.
- A table is a collection of data.
- Items are a group of attributes that is uniquely identifiable among all the other items.
- Attributes are a fundamental data element, something that does not need to be broken down any further.

DynamoDB supports two different kinds of primary keys. The **partition key** is a simple primary key, which is composed of one attribute called the sortkey.The partition key and sort key are also known as the **composite primary key**,which is composed of two attributes.

To learn more about how DynamoDB works, see table item attributes at https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.TablesItemsAttributes.

# Partitioning

![[Pasted image 20240826050130.png]]

As data grows, table data is partitioned and indexed by the primary key. 

You can retrieve data from a DynamoDB table in two different ways:
•In the first method, the query operation takes advantage of partitioning to effectively locate items by using the primary key. 
•The second method is via a scan, which enables you to locate items in the table by matching conditions on non-key attributes. The second method gives you the flexibility to locate items by other attributes. However, the operation is less efficientbecause DynamoDB will scan through all the items in the table to find the ones that match your criteria.

> [!NOTE]
> Partitioning allows large tables to be scanned and queried quickly. As data grows, table is partitioned by key. QUERY by Key to find items by any attribute. 

# Items must have a key

![[Pasted image 20240826050343.png]]

To take full advantage of query operations and DynamoDB, it's important to think about the key that you useto uniquely identify items in the DynamoDB table. You can set up a simple primary key that is based on a single attribute of the data values with a uniform distribution, such as the **Globally Unique Identifier (GUID)** or other random identifiers. 

For example, if you wanted to model a table with products, you could use some attributeslike the product ID. Alternatively, you can specify a compound key, which is composed of a partition key and a secondary key. In this example, if you had a table with books, youmight use the combination of author and title to uniquely identify table items. This method could be useful if you expect to frequently look at books by authorbecause you couldthen use query.

> [!NOTE]
> The two different types of keys. A single key means the data is identified by an item in the data that uniquely identifies each record. A compound key is made up of a partition key and a second key that can be used for sorting data. 

# Key takeaways

Amazon DynamoDB:
- Runs exclusively on SSDs.
- Supports document and key-value store models.
- Replicates your tables automatically across your choice of AWS Regions.
- Works well for mobile, web, gaming, adtech, and Internet of Things (IoT) applications.
- Is accessible via the console, the AWS CLI, and API calls.
- Provides consistent, single-digit millisecond latency at any scale.
- Has no limits on table size or throughput.

DynamoDB runs exclusively on SSDs, and it supports document and key-value store models. 

DynamoDB works well for mobile, web, gaming, ad tech, and Internet of Things (IoT)applications.It’s accessible via the console, the AWS CLI, and API calls. 

The ability to scale your tables in terms of both storage and provision throughput makes DynamoDB a good fit for structured data from the web, mobile, and IoT applications. For instance, you might have a large number of clients that continuously generate data and make large numbers of requests per second. In this case, the throughput scaling of DynamoDB enables consistent performance for your clients. DynamoDB is also used in latency-sensitive applications. The predictable query performance—even in large tables—makes it useful for cases where variable latency could cause significant impact to the user experience or to business goals, such as adtechor gaming. 

The DynamoDB Global Tables feature reduces the work of replicating data between Regions and resolving update conflicts. It replicates your DynamoDB tables automatically across your choice of AWS Regions. Global Tables can help applications stay available and performant for business continuity.

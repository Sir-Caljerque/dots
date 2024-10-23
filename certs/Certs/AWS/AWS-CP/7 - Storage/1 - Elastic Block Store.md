# Storage

Amazon EBS provides persistent block storage volumes for use with Amazon EC2 instances. Persistent storage is any data storage device that retains data after power to that device is shut off. It is also sometimes called non-volatile storage.

Each Amazon EBS volume is automatically replicated within its Availability Zone to protect you from component failure. It is designed for high availability and durability. Amazon EBS volumes provide the consistent and low-latency performance that is needed to run your workloads.

With Amazon EBS, you can scale your usage up or down within minutes, while paying a low price for only what you provision.

# AWS storage options: Block vs object storage

What if you want to change one character in a 1-GB file?
![[Pasted image 20240820181732.png]]
**Block storage** - change on block (piece of the file) that contains the character

![[Pasted image 20240820181746.png]]
**Object storage** - entire storage must be updated

What happens if you want to change one character in a 1-GB file? With block storage, you change only the block that contains the character. With object storage, the entire file must be updated.

One critical difference between some storage types is whether they offer block-level storage or object-level storage.

This difference has a major effect on the throughput, latency, and cost of your storage solution. Block storage solutions are typically faster and use less bandwidth, but they can cost more than object-level storage.

# Amazon EBS

Amazon EBS enables you to _create individual storage volumes and attach them_
to an Amazon EC2 instance:

- Amazon EBS offers block-level storage.
- Volumes are automatically replicated within its Availability Zone.
- It can be backed up automatically to Amazon S3 through snapshots.
- Uses include –
  - Boot volumes and storage for Amazon Elastic Compute Cloud (Amazon EC2) instances
  - Data storage with a file system
  - Database hosts
  - Enterprise applications

Amazon EBS enables you to create individual storage volumes and attach them to an Amazon EC2 instance. Amazon EBS offers block-level storage, where its volumes are automatically replicated within its Availability Zone. Amazon EBS is designed to provide durable, detachable, block-level storage (which is like an external hard drive) for your Amazon EC2 instances. Because they are directly attached to the instances, they can provide low latency between where the data is stored and where it might be used on the instance.

For this reason, they can be used to run a database with an Amazon EC2 instance. Amazon EBS volumes are included as part of the backup of your instances into Amazon Machine Images (or AMIs). AMIs are stored in Amazon S3 and can be reused to create new Amazon EC2 instances later.

A backup of an Amazon EBS volume is called a snapshot. The first snapshot is called the baseline snapshot. Any other snapshot after the baseline captures only what is different from the previous snapshot.

Amazon EBS volumes uses include:

- Boot volumes and storage for Amazon EC2 instances
- Data storage with a file system
- Database hosts
- Enterprise applications

# Amazon EBS volume types

|                     | Solid State Drives | (SSD)            | Hard Disk Drives     | (HDD)     |
| ------------------- | ------------------ | ---------------- | -------------------- | --------- |
|                     | General purpose    | Provisioned IOPS | Throughput-optimized | Cold      |
| Max. Vol. size      | 16TiB              | 16TiB            | 16TiB                | 16TiB     |
| Max. IOPS/Vol       | 16,000             | 64,000           | 500                  | 250       |
| Max. throughput/Vol | 250 MiB/s          | 1000 MiB/s       | 500 MiB/s            | 250 MiB/s |

Matching the correct technology to your workload is a best practice for reducing storage costs. Provisioned IOPS SSD-backed Amazon EBS volumes can give you the highest performance. However, if your application doesn't require or won't use performance that high, General Purpose SSD is usually sufficient. Only SSDs can be used as boot volumes for EC2 instances. The lower-cost options might be a solution for additional storage or use cases other than boot volumes.

To learn more about Amazon EBS volume types, see https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html.

# EBS storage volumes type use cases

| SSD                                         | SSD                                                                                                                                   | HDD                                                                         | HDD                                                                                 |
| ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| General purpose                             | Procisioned IOPS                                                                                                                      | Throughput-optimized                                                        | Cold                                                                                |
| This type is recommended for most workloads | Critical business applications that require sustained IOPS performance, or more then 16,000 IOPS or 250 MiB/s of thoughput per volume | Streaming workloads that require consistent, fast throughput at a low price | Throughput-oriented storage for large volumes of data that is infrequently accessed |
| system boot volumes                         | Large database workloads                                                                                                              | Big data                                                                    | scenarios where the lowest storage cost is important                                |
| virtual desktops                            |                                                                                                                                       | Data warehouses                                                             | it cannot be a boot volume                                                          |
| low-latency interactive applications        |                                                                                                                                       | Log processing                                                              |                                                                                     |
| Development and test environments           |                                                                                                                                       | It cannot be a log volume                                                   |                                                                                     |

As mentioned previously an Amazon EBS volume is a durable, block-level storage device that you can attach to a single EC2 instance. You can use Amazon EBS volumes as primary storage for data that requires frequent updates, such as the system drive for an instance or storage for a database application. You can also use them for throughput-intensive applications that perform continuous disk scans. Amazon EBS volumes persist independently from the running life of an EC2 instance.

Use cases for EBS vary by the storage type used and whether you are using General Purpose or Provisioned IOPS.

# EBS features
- Snapshots
    - Point-in-time snapshots
    - Recreate a new volume at any time
- Encryption
    - Encrypted Amazon EBS volumes
    - No additional cost
- Elasticity 
    - Increase capacity
    - Change to different types

To provide an even higher level of data durability, Amazon EBS enables you to create **point-in-time** snapshots of your volumes, and you can re-create a new volume from a snapshot at any time. You can also share snapshots or even copy snapshots to different AWS Regions for even greater **disaster recovery (DR) protection**. For example, you can encrypt and share your snapshots from Virginia in the US to Tokyo, Japan. 

You can also have encrypted Amazon EBS volumes at no additional cost, so the data that moves between the EC2 instance and the EBS volume inside AWS data centers is encrypted in transit. 

As your company grows, the amount of data that is stored on your Amazon EBS volumes is also likely to grow. Amazon EBS volumes can increase capacity and change to different types, so you can change from hard disk drives (HDDs) to solid state drives (SSDs) or increase from a 50-GB volume to a 16-TB volume. For example, you can do this resize operation dynamically without needing to stop the instances.

# EBS: Volumest, IOPS, and pricing

1. Volumes
    - EBS volumes persist independently from the instance
    - All volume types are charged by the amount that is Provisioned per month
2. IOPS
    - General Puspose SSD:
        - Charged by the amount that you provision in GB per month until storage is released
    - Magnetic:
        - Charged by the number of requests to the volume
    - Provisioned IOPS SSD:
        - Charged by the amount that you provision in IOPS (multiplied by the percentage of days that you provision for the month)

When you begin to estimate the cost for Amazon EBS, you must consider the following:
1. **Volumes** – Volume storage for all Amazon EBS volume types is charged by the amount you provision in GB per month, until you release the storage. 
2. **IOPS** – I/O is included in the price of General Purpose SSD volumes. However, for Amazon EBS magnetic volumes, I/O is charged by the number of requests that you make to your volume. With Provisioned IOPS SSD volumes, you are also charged by the amount you provision in IOPS (multiplied by the percentage of days that you provision for the month).

The pricing and provisioning of Amazon EBS are complex. In general, if you pay for the size of the colume and its usage. To learn more about the full, highly complex pricing and provisioning concepts of Amazon EBS, see https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html. 

# EBS: Snapshots and data transfer

3. Snapshots
    - Added cost of Amazon EBS snapshots to Amazon S3 is per BG-month of data stored
4. Data transfer
    - Inbound data transfer is free
    - Outbound data transfer across regions incurs charges

# Key takeaways

Amazon EBS features:
- Persistent and customizable block storage for Amazon EC2
- HDD and SSD types
- Replicated in the same Availability Zone
- Easy and transparent encryption
- Elastic volumes
- Back up by using snapshots

Amazon EBS provides block-level storage volumes for use with Amazon EC2 instances. Amazon EBS volumes are off-instance storage that persists independently from the life of an instance. They are analogous to virtual disks in the cloud. Amazon EBS provides three volume types: General Purpose SSD, Provisioned IOPS SSD, and magnetic. 

The three volume types differ in performance characteristics and cost, so you can choose the right storage performance and price for the needs of your applications.

Additional benefits include replication in the same Availability Zone, easy and transparent encryption, elastic volumes, and backup by using snapshots.

To learn more about Amazon EBS, see: https://aws.amazon.com/ebs/.

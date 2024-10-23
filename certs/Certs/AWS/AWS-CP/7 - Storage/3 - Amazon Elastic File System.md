# Storage

**Amazon Elastic File System (Amazon EFS)**provides simple, scalable, elastic file storagefor use with AWS services and on-premises resources. It offers a simple interface that enables you to create and configure file systems quickly and easily.

Amazon EFS is built to dynamically scale on demand without disrupting applications—it will grow and shrink automatically as you add and remove files. It is designed so that your applications have the storage they need, when they need it.

# Amazon EFS features

- File storage in the AWS Cloud 
- Works well for big data and analytics, media processing workflows, content management, web serving, and home directories
- Petabyte-scale, low-latency file system
- Shared storage
- Elastic capacity
- Supports Network File System (NFS) versions 4.0 and 4.1 (NFSv4)
- Compatible with all Linux-based AMIs for Amazon EC2

Amazon EFS is a fully managed service that makes it easy to set up and scale file storage in the AWS Cloud. You can use Amazon EFS to build a file system for big data and analytics, media processing workflows, content management, web serving, and home directories. 

You can create file systems that are accessible to Amazon EC2 instances through a file system interface (using standard operating system file I/O APIs). These file systems support full file system access semantics, such as strong consistency and file locking.

Amazon EFS file systems can automatically scale from gigabytes to petabytes of data without the need to provision storage. Thousands of Amazon EC2 instances can access an Amazon EFS file system at the same time, and Amazon EFS is designed to provide consistent performance to each Amazon EC2 instance. Amazon EFS is also designed to be highly durable and highly available. Amazon EFS requires no minimum fee or setup costs, and you pay only for the storage that you use.

# Amazon EFS architecture

![[Pasted image 20240820200422.png]]

Amazon EFS provides file storage in the cloud. With Amazon EFS, you can create a file system, mount the file system on an Amazon EC2 instance, and then read and write data from to and from your file system. You can mount an Amazon EFS file system in your VPC, through NFS versions 4.0 and 4.1 (NFSv4). 

You can access your Amazon EFS file system concurrently from Amazon EC2 instances in your VPC, so applications that scale beyond a single connection can access a file system. Amazon EC2 instances that run in multiple Availability Zones within the same AWS Region can access the file system, so many users can access and share a common data source. 

In the diagram, the VPC has three Availability Zones, and each Availability Zone has one mount target that was created in it. We recommend that you access the file system from a mount target within the same Availability Zone. One of the Availability Zones has two subnets. However, a mount target is created in only one of the subnets.

# Amazon EFS implementation

You must complete five steps to create and use your first Amazon EFS file system, mount it on an Amazon EC2 instance in your VPC, and test the end-to-end setup: 
1. Create your Amazon EC2 resources and launch your instance. (Before you can launch and connect to an Amazon EC2 instance, you must create a key pair, unless you already have one.)
2. Create your Amazon EFS file system.
3. In the appropriate subnets, create your mount targets.
4. Next, connect to your Amazon EC2 instance and mount the Amazon EFS file system.
5. Finally, clean up your resources and protect your AWS account.

# EFS resources

**File system**
- Mount target
    - Subnet ID
    - Security groups
    - One or more per file system
    - Create in a VPC subnet
    - One per Availability Zone
    - Must be in the same VPC
- Tags
    - Key-value pairs

In Amazon EFS, a file system is the primary resource. Each file system has properties such as:
- ID
- Creation token
- Creation time
- File system size in bytes
- Number of mount targets that are created for the file system
- File system state

Amazon EFS also supports other resources to configure the primary resource. These resources 
include mount targets and tags.

**Mount target:** To access your file system, you must create mount targets in your VPC. Each mount target has the following properties: 
- The mount target ID
- The subnet ID for the subnet where it was created
- The file system ID for the file system where it was created
- An IP address where the file system can be mounted
- The mount target state

You can use the IP address or the Domain Name System (DNS) name in your mount command.

**Tags:**To help organize your file systems, you can assign your own metadata to each of the file systems that you create. Each tag is a key-value pair. 

Think of mount targets and tags as subresources that do not exist unless they are associated with a file system.

# Key takeaways

- Amazon EFS provides file storage over a network.
- Perfect for big data and analytics, media processing workflows, content management, web serving, and home directories.
- Fully managed service that eliminates storage administration tasks.
- Accessible from the console, an API, or the CLI.
- Scales up or down as files are added or removed and you pay for what you use.

To learn more about Amazon EFS, see https://aws.amazon.com/efs/

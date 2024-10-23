Cloud storage is typically more reliable, scalable, and secure than traditional on-premises storage systems. Cloud storage is a critical component of cloud computing because it holds the information that applications use. Big data analytics, data warehouses, the Internet of Things (IoT), databases, and backup and archive applications all rely on some form of data storage architecture. 

This module addresses the following topics:
- Amazon Elastic Block Store (Amazon EBS)
- Amazon Simple Storage Service (Amazon S3)
- Amazon Elastic File System (Amazon EFS)
- Amazon Simple Storage Service Glacier

This module includes four recorded demonstrations that show you how to use the AWS Management Console to create storage solutions.This module includes a hands-on lab where you create an Amazon EBS volume, and then attach it to an Amazon Elastic Compute Cloud (Amazon EC2) instance. You also create a snapshot of your volume and then use the snapshot to create a new volume.

This module includes an activity that challenges you to determine the best storage solution for a business case.

Finally you are asked to complete a knowledge check that tests your understanding of the key concepts in theis module

# Objectives

The goal of this module is to discover key concepts that relate to storage. You will learn about the different types of storage resources that are available and review the different pricing options so that you can understand how different choices affect your solution cost.
After completing this module, you should be able to:
- Identify the different types of storage
- Explain Amazon S3
- Identify the functionality in Amazon S3
- Explain Amazon EBS
- Identify the functionality in Amazon EBS
- Perform functions in Amazon EBS to build an Amazon EC2 storage solution 
- Explain Amazon EFS
- Identify the functionality in Amazon EFS
- Explain Amazon S3 Glacier
- Identify the functionality in Amazon S3 Glacier
- Differentiate between Amazon EBS, Amazon S3, Amazon EFS, and Amazon S3 Glacier

# Core AWS serives

Storage is another AWS core service category. Some broad categories of storage include: instance store (ephemeral storage), Amazon EBS, Amazon EFS, Amazon S3, and Amazon S3 Glacier.
- Instance store, or ephemeral storage, istemporary storagethat is added to your Amazon EC2 instance. 
- Amazon EBS is persistent, mountable storage that can be mounted as a device to an Amazon EC2 instance. Amazon EBS can be mounted to an Amazon EC2 instance only within the same Availability Zone. Only one Amazon EC2 instance at a time can mount an Amazon EBS volume.
- Amazon EFS is a shared file system that multiple Amazon EC2 instances can mount at the same time. 
- Amazon S3 is persistent storage where each file becomes an object and is available through a Uniform Resource Locator (URL); it can be accessed from anywhere.
- Amazon S3 Glacier is for cold storage for data that is not accessed frequently (for example, when you need long-term data storage for archival or compliance reasons).
![[Pasted image 20240820180745.png]]
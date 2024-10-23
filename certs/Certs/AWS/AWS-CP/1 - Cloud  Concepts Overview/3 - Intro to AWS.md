# 1 - What are web services

![[Pasted image 20240515054031.png]]

In general, a web service is any piece of software that makes itself **available over the internet or on private (intranet) networks.** A web service uses a **standardized format**-such as Extensible Markup Language (XML) or JavaScript Object Notation (JSON)—for the request and the response of an application programming interface (API) interaction. It is not tied to any one operating system or programming language. It’s self-describing via an interface definition file and it is **discoverable**.

# 2 - What is AWS

- AWS is a **secure cloud platform** that offers a **broad set of global cloud-based projects**
- AWS provides you with **on-demand access** to compute, storage, network, database, and other IT resources and management tools
- AWS offers flexibility
- You pay only for the individual services you need, for as long as you use them
- AWS services work together like building blocks

Amazon Web Services (AWS) is a secure cloud platform that offers a broad set of global cloud-based products. Because these products are delivered over the internet, you have on-demand access to the compute, storage, network, database, and other IT resources that you might need for your projects—and the tools to manage them. You can immediately provision and launch AWS resources. The resources are ready for you to use in minutes.

AWS offers flexibility. Your AWS environment can be reconfigured and updated on demand, scaled up or down automatically to meet usage patterns and optimize spending, or shut down temporarily or permanently. The billing for AWS services becomes an operational expense instead of a capital expense.

AWS services are designed to work together to support virtually any type of application or workload. Think of these services like building blocks, which you can assemble quickly to build sophisticated, scalable solutions, and then adjust them as your needs change.

# 3 - Categories of AWS services

![[Pasted image 20240515054659.png]]

> [!NOTE]
> AWS services fall under different categories, and each category contains one or more services.
You can select the services you want from these different categories to build your solutions

# 4 - Simple solution example

![[Pasted image 20240515054844.png]]

For example, say you’re building a database application. Your customers might be sending data to your Amazon Elastic Compute Cloud (Amazon EC2) instances, which is a service in the compute category. These EC2 servers batch the data in one-minute increments and add an object per customer to Amazon Simple Storage Service (Amazon S3), the AWS storage service you’ve chosen to use. You can then use a nonrelational database like Amazon DynamoDB to power your application, for example, to build an index so that you can find all the objects for a given customer that were collected over a certain period. You might decide to run these services inside an Amazon Virtual Private Cloud (Amazon VPC), which is a service in the networking category.

The purpose of this simple example is to illustrate that you can select web services from different categories and use them together to build a solution (in this case, a database application). Of course, the solutions you build can be quite complex.

# 5 - Choosing a service

![[Pasted image 20240515054953.png]]

Which service you choose to use will depend on your business goals and technology requirements. In the example you just looked at, the solution made use of Amazon EC2 as the compute service. However, that is only one of many compute services that AWS offers. Here are some other AWS compute offerings that you might choose to use for the following example use cases:
- Amazon EC2(https://aws.amazon.com/ec2/): You want complete control over your AWS computing resources.
- AWS Lambda (https://aws.amazon.com/lambda/): You want to run your code and not manage or provision servers.
- AWS Elastic Beanstalk (https://aws.amazon.com/elasticbeanstalk/): You want a service that deploys, manages, and scales your web applications for you.
- Amazon Lightsail(https://aws.amazon.com/lightsail/): You need a lightweight cloud platform for a simple web application.
- AWS Batch (https://aws.amazon.com/batch/): You need to run hundreds of thousands of batch workloads.
- AWS Outposts (https://aws.amazon.com/outposts/): You want to run AWS infrastructure in your on-premises data center.
- Amazon Elastic Container Service (Amazon ECS) (https://aws.amazon.com/ecs/)
- Amazon Elastic Kubernetes Service (Amazon EKS) (https://aws.amazon.com/eks/)
- AWS Fargate(https://aws.amazon.com/fargate/): You want to implement a containers or microservices architecture.
- VMware Cloud on AWS (https://aws.amazon.com/vmware/): You have an on-premises server virtualization platform that you want to migrate to AWS.

Similarly, there are a variety of services for you to choose from in the other categories, and the number of offerings keeps growing.

# 6 - Services covered

![[Pasted image 20240515055246.png]]

The array of AWS services can be intimidating as you start your journey into the cloud. This course focuses on some of the more common services in the following service categories: compute, storage, database, networking and content delivery, security, identity, and compliance, management and governance, and AWS cost management.

Legend:
- Amazon Elastic Block Store (Amazon EBS)
- Amazon Elastic Compute Cloud (Amazon EC2)
- Amazon Elastic Container Registry (Amazon ECR)
- Amazon Elastic Container Service (Amazon ECS)
- Amazon Elastic File System (Amazon EFS)
- Amazon Elastic Kubernetes Service (Amazon EKS)
- Amazon Relational Database Service (Amazon RDS)
- Amazon Simple Storage Service (Amazon S3)
- Amazon Virtual Private Cloud (Amazon VPC)
- AWS Identity and Access Management (IAM)
- AWS Key Management Service (AWS KMS)

# 7 - Three ways to interact with AWS

You might wonder how to access the broad array of services that are offered by AWS. There are three ways to create and manage resources on the AWS Cloud:
- AWS Management Console: The console provides a rich graphical interface to a majority of the features offered by AWS. (Note: From time to time, new features might not have all of their capabilities included in the console when the feature initially launches.)
- AWS Command Line Interface (AWS CLI): The AWS CLI provides a suite of utilities that **can be launched from a command script in Linux, macOS, or Microsoft Windows**.
- Software development kits (SDKs): AWS provides packages that **enable accessing AWS in a variety of popular programming languages**. This makes it easy to use AWS in your existing applications and it also enables you to create applications that deploy and monitor complex systems entirely through code. 

All three options are built on a common REST-like API that serves as the foundation of AWS.

To learn more about tools you can use to develop and manage applications on AWS, see 
https://aws.amazon.com/tools/.

# 8 - Key takeaways

AWS is a secure cloud platform that offers a broad set of global cloud-based products called services that are designed to work together.
- There are many categories of AWS services, and each category has many services to choose from.
- Choose a service based on your business goals and technology requirements.
- There are three ways to interact with AWS services.


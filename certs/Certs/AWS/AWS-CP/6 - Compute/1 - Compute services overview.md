# AWS compute services
Amazon Web Services (AWS) offers many compute services. Here is a brief summary of what each compute service offers:
- **Amazon Elastic Compute Cloud (Amazon EC2)** provides resizable virtual machines.
- **Amazon EC2 Auto Scaling** supports application availability by allowing you to define conditions that will automatically launch or terminate EC2 instances.
- **Amazon Elastic Container Registry (Amazon ECR)** is used to store and retrieve Docker images. 
- **Amazon Elastic Container Service (Amazon ECS)**is a container orchestration service that supports Docker.
- **VMware Cloud on AWS** enables you to provision a hybrid cloud without custom hardware.
- **AWS Elastic Beanstalk**provides a simple way to run and manage web applications.
- **AWS Lambda** is a serverless compute solution. You pay only for the compute time that you use.
- **Amazon Elastic Kubernetes Service (Amazon EKS)** enables you to run managed Kubernetes on AWS.
- **Amazon Lightsail**provides a simple-to-use service for building an application or website.
- **AWS Batch** provides a tool for running batch jobs at any scale.
- **AWS Fargate** provides a way to run containers that reduce the need for you to manage servers or clusters.
- **AWS Outposts** provides a way to run select AWS services in your on-premises data center.
- **AWS Serverless Application Repository**provides a way to discover, deploy, and publish serverless applications.This module will discuss details of the services that are highlighted on the slide. 

# Categorizing compute services

| Services                     | Key concepts                                               | Characteristics                                                                                          | Ease of use                                                                                 |
| ---------------------------- | ---------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| EC2                          | - IaaS<br>- Instance-based<br>- Virtual machines           | Provision virtual machines that you can manage as you choose                                             | A familiar concept to many IT professionals                                                 |
| Lambda                       | - *Serverless* computing<br>- Function-based<br>- Low-cost | - Write and deploy code that runs on a schedule or that can be triggered by events<br>-Use when possible | A relatively new concept for many IT staff members but easy to use after you learn how      |
| ECS<br>EKS<br>Fargate<br>ECR | - Container-based computing<br>- Instance-based            | Spin up and run jobs more quickly                                                                        | Fargate reduces administrative overhead, but you can use options that give you more control |
| Elastic beanstalk            | - PaaS<br>- For *web applications*                         | - Focus on your code (building your app)<br>- Can easily tie into other services - databases, DNS, etc   | Fast and easy to get started                                                                |

You can think of each AWS compute service as belonging to one of four broad categories: virtual machines (VMs) that provide infrastructure as a service (IaaS), serverless, container-based, and platform as a service (PaaS).

**Amazon EC2**provides virtual machines, and you can think of it as infrastructure as a service (IaaS). IaaS services provide flexibility and leave many of the server management responsibilities to you. You choose the operating system, and you also choose the size and resource capabilities of the servers that you launch. For IT professionals who have experience using on-premises computing, virtual machines are a familiar concept. Amazon EC2 was one of the first AWS services, and it remains one of the most popular services.

**AWS Lambda** is a zero-administration compute platform. AWS Lambda enables you to run code without provisioning or managing servers. You pay only for the compute time that is consumed. This serverless technology concept is relatively new to many IT professionals. However, it is becoming more popular because it supports cloud-native architectures, which enable massive scalability at a lower cost than running servers 24/7 to support the same workloads.

Container-based services—including **Amazon Elastic Container Service, Amazon Elastic Kubernetes Service, AWS Fargate, and Amazon Elastic Container Registry**—enable you to run multiple workloads on a single operating system (OS). Containers spin up more quickly than virtual machines, thus offering responsiveness. Container-based solutions continue to grow in popularity. 

Finally, **AWS Elastic Beanstalk** provides a platform as a service (PaaS). It facilitates the quick deployment of applications that you create by providing all the application services that you need. AWS manages the OS, the application server, and the other infrastructure components so that you can focus on developing your application code. 

# Choosing the optimal compute service

- The optimal compute service or services that you use will depend on your use case
- Some aspects to consider –
    - What is your application design?
    - What are your usage patterns?
    - Which configuration settings will you want to manage?
- Selecting the wrong compute solution for an architecture can lead to lower performance efficiency
    - A good starting place—Understand the available compute options

AWS offers many compute services because different use cases benefit from different compute environments. The optimal compute service or services that you use will depend on your use case.

Often, the compute architecture that you use is determined by legacy code. However, that does not mean that you cannot evolve the architecture to take advantage of proven cloud-native designs.

Best practices include:
- Evaluate the available compute options
- Understand the available compute configuration options
- Collect computer-related metrics
- Use the available elasticity of resources
- Re-evaluate compute needs based on metrics

Sometimes, a customer will start with one compute solution and decide to change the design based on their analysis of metrics. If you are interested in seeing an example of how a customer modified their choice of compute services for a particular use case, view this Inventory Tracking solution video at https://www.youtube.com/watch?v=zr3Kib0i-OQ&feature=youtu.be&did=ta_card&trk=ta_card.

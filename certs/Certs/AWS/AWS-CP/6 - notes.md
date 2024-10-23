Each AWS service belongs to either SaaS, PaaS, and IaaS
When selecting your use case of AWS Compute services, ask:
- What is your app design
- what are your usage patterns
- what config will you want to manage
---
EC2 can be used for any server-related use cases
EC2 instances are Virtual Machines (VMs)
- *full control* of the guest operating system
- AMI are VM templates
- you can control traffic to and from these instances

EC2 allows you to choose from premade AMIs (made by AWS) and Community AMIs - built gby people
- AWS recomends *not* using community AMIs for any prod or corporate env

---
**Amazon EBS** storage for instances, but for temporary use - for buffers etc.
- HDDs physically attached to the host machine
**EC2 instance store**'s data is lost if instance stops, unlike with EBS
other options include **EFS and S3**

---

**Amazon CloudWatch** is used to monitor EC2 instances and other services with real-time metrics
- maintains 15 months of historical data

---

![[Pasted image 20240831033220.png]]
- on-demand for unpredicted workloads and spot for predictable workloads
> [!side note]
> for older, infrequently used data, you could use S3 glacier

> [!AWS Trusted advisor]
> helps with real time guidance to help you proivision resources that follow AWS best practices

---

**Amazon Elastic Container** service helps manage containers
- instead of running multiple containers on multiple EC2 instances and managing them yourself, ECS connects them with nodes for a centralized managing
***What is AWS Elastic Kubernetes service?***
- kubernetes is an open source way to manage containerized applications *at scale*
	- it automatically provisions, networks, ~~E~~LB. and scales containers
Amazon ***Elastic Container Registry*** makes it easy to *store, run, manage, and deploy* container images
- Supports third party plugins

***

**Lambda** is *serverless*, which means you can run code without reserving resources
- code runs on triggers
- built-in fault tolerance
	- distributed over many AZs

---

AWS **Elastic Beanstalk** is used to manage web applications
- deploy quickly
- choose to have as much or as little control over the infrastructure
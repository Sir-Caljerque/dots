# EC2 pricing models

**On-Demand Instances** - Instances are eligible for the AWS Free Tier (https://aws.amazon.com/free/). They have the lowest upfront cost and the most flexibility. There are no upfront commitments or long-term contracts. It is a good choice for applications with short-term, spiky, or unpredictable workloads.

- Pay by the hour
- No long-term commitments.
- Eligible for the AWS Free Tier.
  **Dedicated Hosts** - are physical servers with instance capacity that is dedicated to your use. They enable you to use your existing per-socket, per-core, or per-VM software licenses, such as for Microsoft Windows or Microsoft SQL Server.
- A physical server with EC2 instance capacity fully dedicated to your use.
  **Dedicated Instances** - are instances that run in a virtual private cloud (VPC) on hardware that’s dedicated to a single customer. They are physically isolated at the host hardware level from instances that belong to other AWS accounts.
- Instances that run in a VPC on hardware that is dedicated to a single customer.
  **Reserved Instances** enable you to reserve computing capacity for 1-year or 3-year term with lower hourly running costs. The discounted usage price is fixed for as long as you own the Reserved Instance. If you expect consistent, heavy use, they can provide substantial savings compared to On-Demand Instances.
- Full, partial, or no upfront payment for instance you reserve.
- Discount on hourly charge for that instance.
- 1-year or 3-year term.
  **Scheduled Reserved Instances** - enable you to purchase capacity reservations that recur on a daily, weekly, or monthly basis, with a specified duration, for a 1-year term. You pay for the time that the instances are scheduled, even if you do not use them.
- Purchase a capacity reservation that is always available on a recurring schedule you specify.
- 1-year term.
  **Spot Instances** - enable you to bid on unused EC2 instances, which can lower your costs. The hourly price for a Spot Instance fluctuates depending on supply and demand. Your Spot Instance runs whenever your bid exceeds the current market price.
- Instances run as long as they are available and your bid is above the Spot Instance price.
- They can be interrupted by AWS with a 2-minute notification.
- Interruption options include terminated, stopped or hibernated.
- Prices can be significantly less expensive compared to On-Demand Instances
- Good choice when you have flexibility in when your applications can run.

**Per second billing** available for On-Demand Instances, Reserved Instances, and Spot Instances that run Amazon Linux or Ubuntu

# EC2 pricing models: Benefits

| On-Demand Instances      | Spot Instances                 | Reserved Instances                                               | Dedicated Hosts                                                                    |
| ------------------------ | ------------------------------ | ---------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| Low cost and flexibility | Large scale, dynamic workloads | Predictability ensures compute capacity is available when needed | Save money on licensing costs<br> Help meet compliance and regulatory requirements |

Each Amazon EC2 pricing model provides a different set of benefits.

**On-Demand Instances** offer the most flexibility, with no long-term contract and low rates.

**Spot Instances** provide large scale at a significantly discounted price.

**Reserved Instances** are a good choice if you have predictable or steady-state compute needs (for example, an instance that you know you want to keep running most or all of the time for months or years).

**Dedicated Hosts** are a good choice when you have licensing restrictions for the software you want to run on Amazon EC2, or when you have specific compliance or regulatory requirements that preclude you from using the other deployment options.

# EC2 pricing models: Use cases

| On-Demand Instances                                                                     | Spot Instances                                                                                                                                                                     | Reserved Instances                                                                                                                                                                                          | Dedicated Hosts                                                                                                                           |
| --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Short-term, spiky, or unpredictable workloads<br>Application development or testing | Applications with flexible start and end times<br>Applications only feasible at very low compute prices<br>Users with urgentcomputing needs for largeamounts of additionalcapacity | Steady state or predictable usage workloads<br>Applications that require reserved capacity, including disaster recovery<br>Users able to make upfront payments to reduce total computing costs even further | Bring your own license (BYOL)<br>Compliance and regulatory restrictions<br>Usage and licensing tracking<br>Control Instance placement |

Here is a review of some use cases for the various pricing options. 

**On-Demand Instance** pricing works well for spiky workloads or if you only need to test or run an application for a short time (for example, during application development or testing). Sometimes, your workloads are unpredictable, and On-Demand Instances are a good choice for these cases.

**Spot Instances** are a good choice if your applications can tolerate interruption with a 2-minute warning notification. By default, instances are terminated, but you can configure them to stop or hibernate instead. Common use cases include fault-tolerant applications such as web servers, API backends, and big data processing. Workloads that constantly save data to persistent storage (such as Amazon S3) are also good candidates.

**Reserved Instances** are a good choice when you have long-term workloads with predictable usage patterns, such as servers that you know you will want to run in a consistent way over many months.

**Dedicated Hosts** are a good choice when you have existing per-socket, per-core, or per-VM software licenses, or when you must address specific corporate compliance and regulatory requirements.

# Four pillars of optimization

To optimize costs, you must consider four consistent, powerful drivers: 
- **Right-size** –Choose the right balance of instance types. Notice when servers can be either sized down or turned off, and still meet your performance requirements.
- **Increase elasticity** –Design your deployments to reduce the amount of server capacity that is idle by implementing deployments that are elastic, such as deployments that use automatic scaling to handle peak loads.
- **Optimal pricing model** –Recognize the available pricing options. Analyze your usage patterns so that you can run EC2 instances with the right mix of pricing options.
- **Optimize storage choices** –Analyze the storage requirements of your deployments. Reduce unused storage overhead when possible, and choose less expensive storage options if they can still meet your requirements for storage performance.

## Pillar 1: Right size

- Provision instances to match the need 
    - CPU, memory, storage, and network throughput
    - Select appropriate *instance types* for your use
- Use Amazon CloudWatch metrics
    - How idle are instances? When?
    - Downsize instances
- Best practice: Right size, then reserve

First, consider right-sizing. AWS offers approximately 60 instance types and sizes. The wide choice of options enables customers to select the instance that best fits their workload. It can be difficult to know where to start and what instance choice will prove to be the best, from both a technical perspective and a cost perspective. Right-sizing is the process of reviewing deployed resources and looking for opportunities to downsize when possible.
**To right-size:**
- **Select**the cheapest instance available that still meets your performance requirements. 
- **Review**CPU, RAM, storage, and network utilization to identify instances that could be downsized. You might want to provision a variety of instance types and sizes in a test environment, and then test your application on those different test deployments to identify which instances offer the best performance-to-cost ratio. For right-sizing, use techniques such as load testing to your advantage.
- **Use**Amazon CloudWatch metrics and set up custom metrics. A metric represents a time-ordered set of values that are published to CloudWatch (for example, the CPU usage of a particular EC2 instance). Data points can come from any application or business activity for which you collect data. 

## Pillar 2: Increase elasticity
- **Stop** or **hibernate** EBS-backed instances that are not actively in use
    - Example: non-production development or test instances
- Use **automatic scaling** to match needs based on usage
    - Automated and time-based elasticity

One form of *elasticity*is to create, start, or use EC2 instances when they are needed, but then to turn them off when they are not in use. Elasticity is one of the central tenets of the cloud, but customers often go through a learning process to operationalize elasticity to drive cost savings. 

The easiest way for large customers to embrace elasticity is to look for resources that look like good candidates for stopping or hibernating, such as non-production environments, development workloads, or test workloads. For example, if you run development or test workloads in a single time zone, you can easily turn off those instances outside of business hours and thus reduce runtime costs by perhaps 65 percent. The concept is similar to why there is a light switch next to the door, and why most offices encourage employees *to turn off the lights on their way out of the office each night.* 

For production workloads, configuring more precise and granular automatic scaling policies can help you take advantage of horizontal scaling to meet peak capacity needs and to not pay for peak capacity all the time. 

As a rule of thumb, you should target 20–30 percent of your Amazon EC2 instances to run as On-Demand Instances or Spot Instances, and you should also actively look for ways to maximize elasticity.

## Pillar 3: Optimal pricing model

- Leverage the right pricing model for your use case
    - Consider your usage patterns 
- Optimize and combinepurchase types
- Examples:
    - Use On-Demand Instanceand SpotInstancesfor variable workloads
    - Use Reserved Instancesfor predictable workloads
- Consider serverless solutions (AWS Lambda)

AWS provides a number of pricing models for Amazon EC2 to help customers save money. The models available were discussed in detail earlier in this module. Customers can combine multiple purchase types to optimize pricing based on their current and forecast capacity needs. 

Customers are also encouraged to consider their application architecture. For example, does the functionality provided by your application need to run on an EC2 virtual machine? Perhaps by making use of the AWS Lambda service instead, you could significantly decrease your costs. 

AWS Lambda is discussed later in this module.

## Pillar 4: Optimize storage choices

- Reduce costs while maintaining storage performance and availability
- Resize EBS volumes
- Change EBS volume types
    - Can you meet performance requirements with less expensive storage?
    - Example: Amazon EBS Throughput Optimized HDD (st1)storage typically costs half as much as the default General Purpose SSD (gp2)storage option.
- Delete EBS snapshots that are no longer needed
- Identify the most appropriate destination for specific types of data
    - Does the application need the instance to reside on Amazon EBS?
    - Amazon S3 storage options with lifecycle policies can reduce costs

Customers can also reduce storage costs. When you launch EC2 instances, different instance types offer different storage options. It is a best practice to try to reduce costs while also maintaining storage performance and availability. 

One way you can accomplish this is by **resizing EBS volumes**. For example, if you originally provisioned a 500-GB volume for an EC2 instance that will only need a maximum of 20 GB of storage space, you can reduce the size of the volume and save on costs.

There are also a variety of **EBS volume types**. Choose the least expensive type that still meets your performance requirements. For example, Amazon EBS Throughput Optimized HDD (st1) storage typically costs half as much as the default General Purpose SSD (gp2) storage option. If an st1 drive will meet the needs of your workload, take advantage of the cost savings.

Customers often use **EBS snapshots** to create data backups. However, some customers forget to delete snapshots that are no longer needed. Delete these unneeded snapshots to save on costs.

Finally, try to identify the most **appropriate destination for specific types of data**. Does your application need the data it uses to reside on Amazon EBS? Would the application run equally as well if it used Amazon S3 for storage instead? Configuring data lifecycle policies can also reduce costs. For example, you might automate the migration of older infrequently accessed data to cheaper storage locations, such as Amazon Simple Storage Service Glacier.

# Measure, monitor, and improve

- Cost optimization is an ongoing process
- Recommendations -
    - Define and enforce *cost allegation tagging* 
    - Define metrics, set targets, and review regularly
    - Encourage teams to *architect for cost* 
    - Assign the responsibility of optimization to an individual or to a teams

If it is done correctly, cost optimization is not a one-time process that a customer completes. Instead, by routinely measuring and analyzing your systems, you can continually improve and adjust your costs.

**Tagging**helps provide information about what resources are being used *by whom* and *for what purpose*.You can activate cost allocation tags in the Billing and Cost Management console, and AWS can generate a cost allocation report with usage and costs grouped by your active tags. Apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services.

**Encourage teams to architect for cost**. AWS Cost Explorer is a free tool that you can use to view graphs of your costs. You can use Cost Explorer to see patterns in how much you spend on AWS resources over time, identify areas that need further inquiry, and see trends that you can use to understand your costs.

Use AWS services such as **AWS Trusted Advisor**, which provides real-time guidance to help you provision resources that follow AWS best practices. 

Cost-optimization efforts are typically more successful when the responsibility for cost optimization is assigned to an individual or to a team.

# Key takeaways

Some keytakeaways from this section of the module are:
- **Amazon EC2 pricing models**include On-Demand Instances, Reserved Instances, Spot Instances, Dedicated Instances, and Dedicated Hosts. Per second billing is available for On-Demand Instances, Reserved Instances, and Spot Instances that use only Amazon Linux and Ubuntu. 
- **Spot Instances** can be interrupted with a 2-minute notification. However,they can offer significant cost savings over On-Demand Instances.
- The **four pillars of cost optimization** are–
    - Right size
    - Increase elasticity
    - Optimal pricing model
    - Optimize storage choices

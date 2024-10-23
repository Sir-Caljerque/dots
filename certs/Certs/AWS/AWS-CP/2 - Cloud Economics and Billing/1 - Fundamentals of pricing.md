# 1 - Pricing model

3 fundamentals of cost with AWS
# Compute
- Charged by hour/second
- Varies by instance types

# Storage
- Charged typically per GB

# Data transfer
- Outbound is aggregated and charged
- Inbound has no chartge (with some exceptions)
- Charged typically per GB

# ------------------------------------------
There are three fundamental drivers of cost with AWS: compute, storage, and outbound data transfer. These characteristics vary somewhat, depending on the AWS product and pricing model you choose.
In most cases,there is no charge for inbound data transfer or for data transfer between other AWS services within the same AWS Region. There are some exceptions,so be sure to verify data transfer rates before you begin to use the AWS service.
Outbound data transfer is aggregated across servicesand then charged at the outbound data transfer rate. This charge appears on the monthly statement as AWS Data Transfer Out


# 2 - How do you paw for AWS

This philosophy is what underlies AWS pricing. While the number and types of services offered by AWS have increased dramatically, our philosophy on pricing has not changed. At the end of each month, you pay for what you use. You can start or stop using a product at any time. No long-term contracts are required.
AWS offers a range of cloud computing services. For each service, you pay for exactly the amount of resources that you actually need. This utility-style pricing model includes:
- Pay for what you use
- Pay less when you reserve
- Pay less when you use more
- Pay even less as AWS grows 
You will now take a closer look at these core concepts of pricing.
To learn more about AWS pricing,seethe AWS pricing overview at https://d0.awsstatic.com/whitepapers/aws_pricing_overview.pdf.

# 3 - Pay for what you use

Pay only for the services that you consume, with no large upfront expenses.
![[Pasted image 20240801130423.png]]

Unless you build data centers for a living, you might have spent too much time and money building them. With AWS, you pay only for the services that you consume with no large upfront expenses. You can lower variable costs, so you no longer need to dedicate valuable resources to building costly infrastructure, including purchasing servers, software licenses, or leasing facilities.
Quickly adapt to changing business needs and redirect your focus on innovation and invention by paying only for what you use and for as long as you need it. All AWS services are available on demand, require no long-term contracts, and have no complex licensing dependencies.

# 4 - Pay less when you reserve

For certain services like AmazonElastic Compute Cloud (Amazon EC2) and Amazon Relational Database Service (Amazon RDS), you can invest in reserved capacity. With Reserved Instances, you can save up to 75 percent over equivalent on-demand capacity. Reserved Instances are available in three options:
- All Upfront Reserved Instance (or AURI)
- Partial Upfront Reserved Instance (or PURI)
- No Upfront Payments Reserved Instance (or NURI)

When you buy Reserved Instances, youreceive a greater discount when you make alarger upfront payment. To maximize your savings, you can pay all upfront and receive the largest discount. Partial Upfront RIs offer lower discounts, but they give you the option to spend less upfront. Lastly, you can choose to spend nothing upfront and receive a smaller discount, which enables you to free capital to spend on other projects.

By using reserved capacity, your organization can minimize risks, more predictably manage budgets, and comply with policies that require longer-term commitments.

# 5 - Pay less by using more

Realize volume-based discounts:
- **Savings** as usage increases
- **Tiered priving** for services like Amazon S3, EBS, or EFS -> the more you use, the less you pay per GB
- Multiple storage services deliver lower costs based on needs

With AWS, you can get volume-based discounts and realize important savings as your usage increases. For services like Amazon Simple StorageService (Amazon S3), pricing is tiered, which means that you pay less per GB when you use more. In addition, data transfer inis always free. Multiple storage services deliver lower storage costs based on your needs. As a result, as your AWS usage needs increase, you benefit from the economies of scale that enable you to increase adoption and keep costs under control.

As your organization evolves, AWS also gives you options to acquire services that help you address your business needs. For example, the AWS storage services portfolio offers options to help you lower pricing based on how frequently you access data and the performance that you need to retrieve it. To optimize your savings, you can choose the right combination of storage solutions that help you reduce costs while preserving performance, security, and durability.

# 6 - Pay even less as AWS grows

As AWS grows:

- AWS focuses on lowering the cost of doing business
- This practice results in AWS passing savings from economies of scale to you
- Since 2006, AWS hjas lowered pricing 75 times (as of September 2019)
- Future higher-performing resources replace current resources for no extra charge

AWS constantly focuses on reducing data center hardware costs, improving operational efficiencies, lowering power consumption, and generally lowering the cost of doing business.

These optimizations and the substantial and growing economies of scale of AWS result in passing savings back to you as lower pricing. Since 2006, AWS has lowered pricing 75times (as of September 2019).

Another benefit of AWS growth is that future, higher-performing resources replace current ones for no extra charge.

# 7 - Custom pricing

- Meet varying needs through custom pricing
- Available for high-volume projects with unique requirements

AWS realizes that every customer has different needs. If none of the AWS pricing models work for your project, custom pricing is available for high-volume projects with unique requirements.

# 8 - Free tier

Enables you to gain free hands-on experience with the AWS platform, products, and services. free for 1 year for new customers

To help new AWS customers get started in the cloud, AWS offers a free usage tier (the AWSFree Tier)for new customers for up to 1 year.The AWS Free Tier applies to certain services and options. If youare a new AWS customer, you can run a free Amazon Elastic Compute Cloud (Amazon EC2) T2 micro instance for a year, while also using a free usage tier for Amazon S3, Amazon Elastic Block Store (Amazon EBS), Elastic Load Balancing, AWS data transfer, and other AWS services.

To learn more, see AWS Free Tier at https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all.

# 9 - Services with no charge

AWS also offers a variety of services for no additional charge.
- Amazon Virtual Private Cloud (Amazon VPC)enables you to provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define.
- AWS Identity and Access Management (IAM)controls your users’ access to AWS services and resources.
- Consolidated Billing is a billing feature in AWS Organizations to consolidate payment for multiple AWS accounts or multiple Amazon Internet Services Private Limited (AISPL) accounts\*. Consolidated billing provides:
- One bill for multiple accounts.
- The ability to easily track each account’s charges.
- The opportunity to decrease charges as a result of volume pricing discounts from combined usage.
- And you can consolidate all of your accounts using Consolidated Billing and get tiered benefits.
- AWS Elastic Beanstalk is an even easier way for you to quickly deploy and manage applications in the AWS Cloud.
- AWS CloudFormationgives developers and systems administrators an easy way to create a collection of related AWS resources and provision them in an orderly and predictable fashion.
- Automatic Scalingautomatically adds or removes resources according to conditions you define. The resources you are using increase seamlessly during demand spikes to maintain performance and decrease automatically during demand lulls to minimize costs.
- AWS OpsWorks is an application management service that makes it easy to deploy and 
operate applications of all shapes and sizes.

Though there is no charge for these services, there might be charges associated with other AWS services used with these services. For example, when you automatically scale additional EC2 instances, there will be charges for those instances.

> [!NOTE]
> The main difference between AWS accounts and AISPL accounts is the seller of record. AWS accounts are administered by Amazon Web Services, Inc., but AISPL accounts are administered by Amazon Internet Services Private Limited. If you used an Indian address when you created your account, your account's default seller of record is AISPL. By default, AISPL accounts are billed in Indian Rupees (INR). See more on the seller of record here https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-account-payment-aispl.html#determine-seller. 

# A - Key takeaways

There is no charge (with some exceptions) for:
- Inbound data transfer.
- Data transfer between services within the same AWS Region.
- Pay for what you use.
- Start and stop anytime.
- No long-term contracts are required.
- Some services are free, but the other AWS services that they provision might not be free

In summary, while the number and types of services offered by AWS have increased dramatically, our philosophy on pricing has not changed. At the end of each month, you pay only for what you use, and you can start or stop using a product at any time. No long-term contracts are required. 

The best way to estimate costs is to examine the fundamental characteristics for each AWS service, estimate your usage for each characteristic, and then map that usage to the prices that are posted on the AWS website. The service pricing strategy gives you theflexibility to choose the services that you need for each project and to pay only for what you use.

There are several free AWS services, including: 
- Amazon VPC
- Elastic Beanstalk
- AWS CloudFormation
- IAM
- Automatic scaling services
- AWS OpsWorks
- Consolidated Billing 

While the services themselves are free, the resources that they provision might not be free. In most cases,there is no charge for inbound data transfer or for data transfer between other AWS services within the same AWS Region. There are some exceptions,so be sure to verify data transfer rates before you begin to use the AWS service.Outbound data transfer costs are tiered.

To learn more about pricing, seeAWS pricing at https://aws.amazon.com/pricing/and AWS pricing overview at https://d0.awsstatic.com/whitepapers/aws_pricing_overview.pdf.


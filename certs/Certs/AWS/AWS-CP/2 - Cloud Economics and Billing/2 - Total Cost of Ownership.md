# 1 - On-premises versus cloud

![[Pasted image 20240801132905.png]]

On-premises versus cloud is a question that many businesses ask. The difference between these two options is how they are deployed.

An on-premises infrastructure is installed locally on a company’s own computers and servers. There are several fixed costs, also known as capital expenses, that are associated with the traditional infrastructure. Capital expenses include facilities, hardware, licenses, and maintenance staff. Scaling up can be expensive and time-consuming. Scaling down does not reduce fixed costs.

A cloud infrastructure is purchased from a service provider who builds and maintains the facilities, hardware, and maintenance staff. A customer pays for what is used. Scaling up or down is simple. Costs are easy to estimate because they depend on service use.

It is difficult to compare an on-premises IT delivery model with the AWS Cloud. The two are different because they use different concepts and terms. 

Using on-premises IT involves a discussion that is based on capital expenditure, long planning cycles, and multiple components to buy, build, manage, and refresh resources over time.Using the AWS Cloud involves a discussion about flexibility, agility, and consumption-based costs.

So, how can you identify the best option?

# 2 - What is Total cost of Ownership

Total Cost of Ownership (TCO) is the financial estimate to help identify direct and indirect costs of a system.

Why use TCO?
- To compare the costs of running an entire infrastructure environment or specific workloadon-premises versus on AWS
- To budget and build the business case for moving to the cloud

You can identify the best option by comparing the on-premises solution to a cloud solution. Total Cost of Ownership (or TCO) is a financial estimate that is intended to help buyers and owners determine the direct and indirect costs of a product or system. TCO includes the cost of a service, plus all the costs that are associated with owning the service.

You might want to compare the costs of running an entire infrastructure environment for a specific workload in an on-premises or collocation facility to the same workload running on a cloud-based infrastructure. This comparison is done for budgeting purposes or to build a business case for business decisions about the optimal deployment solution.

# 3 - TCO considerations

![[Pasted image 20240801133438.png]]

Some of the costs that are associated with data center management include: 
- Servercosts for both hardware and software, and facilities costs to house the equipment. 
- Storagecosts for the hardware, administration, and facilities. 
- Networkcosts for hardware, administration, and facilities. 
- And IT labor costs that are required to administer the entire solution.

When you compare an on-premises to cloud solution, it is important to accurately assess the true costs of both options. With the cloud, most costs are upfront and readily calculated. For example, cloud providers give transparent pricing based on different usage metrics, such as RAM, storage, and bandwidth, among others. Pricing is frequently fixed per unit of time.

Customers gain certainty over pricing and are then able to readily calculate costs based on several different usage estimates.

Compare this process to on-premises technology. Though they are sometimes difficult to determine, calculations of in-house costs must take into account all:
- Direct costs that accompany running a server—like power, floor space, storage, and IT operations to manage those resources.
- Indirect costs of running a server, like network and storage infrastructure.

This diagram is conceptual, and it does not include every cost item. For example, depending on the solution you are implementing, software costs can include database, management, and middle-tier costs. Facilities costs can include upgrades, maintenance, building security, taxes, and so on. IT labor costs can include security administration and application administration costs.  This diagramincludes an abbreviated list to demonstrate the type of costs that are involved in data center maintenance.

# 4 - On-premises versus all-in-cloud

You could save up to 96 percent a year by moving your infrastructure to AWS.
Your 3-year total savings would be $159,913
![[Pasted image 20240801134104.png]]

Here is a sample cost comparison. This example shows a cost comparison for an on-premises solution and a cloud solution over 3 years. For this comparison, two similar environments were constructed to represent the on-premises and AWS environments. Additional direct and indirect costs that are associated with the on-premises solution were not included. The components of the on-premises solution include:

- 1 virtual machine with 4 CPUs, 16 GB of RAM, and a Linux operating system
- Average utilization is 100 percent
- Optimized by RAM

The components of a comparable AWS environment include:
- 1 m4.xlarge instance with 4 CPUs, 16 GB of RAM
- The instance type is a 3-year Partial Upfront Reserved Instance

The on-premises 3-year total cost is $167,422. The AWS Cloud 3-year total cost is $7,509, which is a 96 percent savings over the on-premises solution. Thus, the 3-year total savings on cloud infrastructure would be $159,913. This comparison helps a business clearly understand the differences between the alternatives.

**What is the difference in costs?** 
Remember, the on-premises solution is predicted. It continues to incur costs whether the capacity is used.

In contrast, the AWS solution is commissioned when needed and decommissioned when the resources are no longer in use, which results in lower overall costs.

> [!Figure]
> Chart comparing three-year total cost of ownership for on-premises and AWS. On-Premises comes out to $167,422 and AWS comes to $7,509. 

# 5 - pricing calculator

![[Pasted image 20240802053204.png]]

Use the AWS Pricing Calculator to:
- Estimate monthly costs
- Identify opportunities to reduce monthly costs
- Model your solutions before building them
- Explore price points and calculations behind your estimate
- Find the available instance types and contract terms that meet your needs
- Name your estimate and create and name **groups** of services

AWS offers the AWS Pricing Calculatorto help you estimate a monthly AWS bill. You can use this toolto explore AWS services and create an estimate for the cost of your use cases on AWS. You can model your solutions before building them, explore the price points and calculations behind your estimate, and find the available instance types and contract terms that meet your needs. This enables you to make informed decisions about using AWS. You can plan your AWS costs and usage or price out setting up a new set of instances and services.

The AWS Pricing Calculator helps you:
- Estimate monthly costs of AWS services
- Identify opportunities for cost reduction
- Model your solutions before building them
- Explore price points and calculations behind your estimate
- Find the available instance types and contract terms that meet your needs

The AWS Pricing Calculator enables you to name your estimate and create and name groups of services. Groupsare containers that you add services to in order to organize and build your estimate. You can organize your groups and services by cost-center, department, product architecture, etc.

For more information,see the AWS Pricing Calculator website at https://calculator.aws/#/.

# 6 - Reading an estimate

Your estimate is broken into: first 12 months total, total upfront, and total monthly.
![[Pasted image 20240802053247.png]]

AWS Pricing Calculator estimates are broken into:
- The total for your first 12 months –The total estimate for your current group and all of the services and groups in your current group. It combines the upfront and monthly estimates. 
- Your total upfront –How much you are estimated to pay upfront as you set up your AWS stack.
- Your total monthly –How much you're estimated to spend every month while you run your - AWS stack.

Within a group, you can see how much each service is estimated to cost. If you want to price out different ways to build your AWS setup, you can use different groups for each variation of your setup and compare the estimates for the different setups.

For more information, see Reading an estimate at https://docs.aws.amazon.com/pricing-calculator/latest/userguide/what-is-pricing-calculator.html.

> [!For accessibility]
> Example AWS Pricing Calculator estimate. The first 12 month total is $886.92, 
the total upfront cost is $0, and the total monthly cost is $73.91. 
End of accessibility description.

# 7 - Additional benefit considerations

| Hard benefits                                                  | Soft benefits                                                                                                                             |
| -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Reduced spending on compute, storage, networking, security     | Reuse of service and applications that enable you to define (and redefine solutions) by using the same cloud service |
| Reductions in hardware and software purchases (capex)          | Increased developer productivity                                                                                                          |
| Reductions in operational costs, backup, and disaster recovery | Improved customer satisfaction                                                                                                            |
| Reduction in operational personnel                             | Agile business processes that can quickly respond to new and emerging opportunities                                                       |
| ---------------------------                                    | Increase in global reach                                                                                                                  |

Hard benefits include reduced spending on compute, storage, networking, and security. They also 
include reductions in hardware and software purchases; reductions in operational costs, backup, 
and disaster recovery; and a reduction in operations personnel.

Cloud Total Cost of Ownership defines what will be spent on the technology after adoption—or what it costs to run the solution. Typically, a TCO analysis looks at the as-is on-premises infrastructure and compares it with the cost of the to-be infrastructure state in the cloud. While this difference might be easy to calculate, it might only provide a narrow view of the total financial impact of moving to the cloud.

A return on investment (ROI) analysis can be used to determine the value that is generated while considering spending and saving. This analysis starts by identifying the hard benefits in terms of direct and visible cost reductions and efficiency improvements.

Next, soft savings are identified. Soft savings are value points that are challenging to accurately quantify, but they can be more valuable than the hard savings. It is important for you to understand both hard and soft benefits to understand the full value of the cloud. Soft benefits include:
- Reusing service and applications that enable you to define (and redefine solutions) by using the same cloud service
- Increased developer productivity
- Improved customer satisfaction 
- Agile business processes that can quickly respond to new and emerging opportunities
- Increased global reach
Now, you will review a case study from Delaware North to see an actual TCO example.


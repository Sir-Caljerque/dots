# Operational excellence

## Deliver business value

- **Focus**
  - Run and monitor systems to deliver business value, and to continually improve supporting processes and procedures.
- **Key topics**
  - Automating changes
  - Responding to events
  - Defining standards to manage daily operations

The _Operational Excellence pillar_ focuses on the ability to run and monitor systems to deliver business value, and to continually improve supporting processes and procedures. Key topics include: automating changes, responding to events, and defining standards to manage daily operations

## Design principles

There are five design principles for operational excellence in the cloud:

- _Perform operations as code_ – Define your entire workload (that is, applications and infrastructure) as code and update it with code. Implement operations procedures as code and configure them to automatically trigger in response to events. By performing operations as code, you limit human error and enable consistent responses to events.
- _Make frequent, small, reversible changes_ – Design workloads to enable components to be updated regularly. Make changes in small increments that can be reversed if they fail (without affecting customers when possible).
- _Refine operations procedures frequently_ – Look for opportunities to improve operations procedures. Evolve your procedures appropriately as your workloads evolve. Set up regular game days to review all procedures, validate their effectiveness, and ensure that teams are familiar with them.
- _Anticipate failure_ – Identify potential sources of failure so that they can be removed or mitigated. Test failure scenarios and validate your understanding of their impact. Test your response procedures to ensure that they are effective and that teams know how to run them. Set up regular game days to test workloads and team responses to simulated events.
- _Learn from all operational failures_ – Drive improvement through lessons learned from all operational events and failures. Share what is learned across teams and through the entire organization.

## Operational excellence questions

_Organization_
- How do you determine what your priorities are?
- How do you structure your organization to support your business outcomes?
- How does your organizational culture support your business outcomes?
_Prepare_
- How do you design your workload so that you can understand its state?
- How do you reduce defects, ease remediation, and improve flow into production?
- How do you mitigate deployment risks?
- How do you know that you are ready to support a workload?
_Operate_
- How do you understand the health of your workload?
- How do you understand the health of your operations?
- How do you manage workload and operations events?
_Evolve_
- How do you evolve operations?

The foundational questions for operational excellence fall under three best practice areas: organization, prepare, operate, and evolve.

Operations teams must understand business and customer needs so they can effectively and efficiently support business outcomes. Operations teams create and use procedures to respond to operational events and validate the effectiveness of procedures to support business needs. Operations teams collect metrics that are used to measure the achievement of desired business outcomes. As business context, business priorities, and customer needs, change over time, it’s important to design operations that evolve in response to change and to incorporate lessons learned through their performance.

# Security pillar

## Protect and monitor systems

**_Focus_**

- Protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies

**_Key topics_**

- Protecting confidentiality and integrity of data
- Identifying and managing who can do what
- Protecting systems- Establishing controls to detect security systems

The Security pillar focuses on the ability to protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies. Key topics include: protecting confidentiality and integrity of data, identifying and managing who can do what (or privilege management), protecting systems, and establishing controls to detect security events.

## Design principles

- _Implement a strong identity foundation_ - Implement the principle of least privilege and enforce separation of duties with appropriate authorization for each interaction with your AWS resources. Centralize privilege management and reduce or even eliminate reliance on long-term credentials.
- _Enable traceability_ – Monitor, alert, and audit actions and changes to your environment in real time. Integrate logs and metrics with systems to automatically respond and take action.
- _Apply security at all layers_ – Apply defense indepth and apply security controls to all layers of your architecture (forexample,edge network, virtual private cloud, subnet, and load balancer; and every instance, operating system, and application).
- _Automate security best practices_ – Automate security mechanisms to improve your ability to securely scale more rapidly and cost effectively. Create secure architectures and implement controls that are defined and managed as code in version-controlled templates.
- _Protect data in transit and at rest_ – Classify your data into sensitivity levels and use mechanisms such as encryption, tokenization, and access control where appropriate.
- _Keep people away from data_ – To reduce the risk of loss or modification of sensitive data due to human error, create mechanisms and tools to reduce or eliminate the need for direct access or manual processing of data.
- _Prepare for security events_ – Have an incident management process that aligns with organizational requirements. Run incident response simulations and use tools with automation to increase your speed of detection, investigation, and recovery.

## Questions

**Foundations**
- How do you manage service quotas and constraints?
- How do you plan your network topology?
**Workload architecture**
- How do you design your workload service architecture?
- How do you design interactions in a distributed system to prevent failure?
- How do you design interactions in a distributed system to mitigate or withstand failures?
**Change management**
- How do you monitor workload resources?
- How do you design your workload to adapt to changes in demand?
- How do you implement change?
**Failure management**
- How do you back up data?
- How do you use fault isolation to protect your workload?
- How do you design your workload to withstand component failures?
- How do you test reliability?
- How do you plan for disaster recovery?

The foundational questions for reliability fall under four best practice areas: foundations, workload architecture, change management, and failure management.

To achieve reliability, a system must have both a well-planned foundation and monitoring in place. It must have mechanisms for handling changes in demand or requirements. The system should be designed to detect failure and automatically heal itself.

# Performance efficiency

## Use resources sparingly

**Focus**
- Use IT and computing resources efficiently to meet system requirements and to maintain that efficiency as demand changes and technologies evolve.
**Key topics**
- Selecting the right resource types and sizes based on workload requirements
- Monitoring performance
- Making informed decisions to maintain efficiency as business needs evolve

The *Performance Efficiency pillar* focuses on the ability to use IT and computing resources efficiently to meet system requirements, and to maintain that efficiency as demand changes or technologies evolve. Key topics include: selecting the right resource types and sizes based on workload requirements, monitoring performance, and making informed decisions to maintain efficiency as business needs evolve.

## Design principles

There are five design principles that can improve performance efficiency:
- *Democratize advanced technologies* – Consume technologies as a service. For example, technologies such as NoSQL databases, media transcoding, and machine learning require expertise that is not evenly dispersed across the technical community. In the cloud, these technologies become services that teams can consume. Consuming technologies enables teams to focus on product development instead of resource provisioning and management.
- *Go global in minutes* – Deploy systems in multiple AWS Regions to provide lower latency and a better customer experience at minimal cost.
- *Use serverless architectures* – Serverless architectures remove the operational burden of running and maintaining servers to carry out traditional compute activities. Serverless architectures can also lower transactional costs because managed services operate at cloud scale.
- *Experiment more often* – Perform comparative testing of different types of instances, storage, or configurations.
- *Consider mechanical sympathy* – Use the technology approach that aligns best to what you are trying to achieve. For example, consider your data access patterns when you selectapproaches fordatabases or storage.

## Questions

**Selection**
- How do you select the best performing architecture?
- How do you select your compute solution?
- How do you select your storage solution?
- How do you select your database solution?
- How do you configure your networking solution?
**Review**
- How do you evolve your workload to take advantage of new releases?
**Monitoring**
- How do you monitor your resources to ensure they are performing?
**Tradeoffs**
- How do you use tradeoffs to improve performance?

The foundational questions for performance efficiency fall under four best practice areas: selection, review, monitoring, and tradeoffs.

Use data to design and build a high-performance architecture. Gather data on all aspects of the architecture, from the high-level design to the selection and configuration of resource types. Review your choices periodically to ensure that you are taking advantage of new AWS services. Perform monitoring so that you are aware of any deviance from expected performance and can take prompt action to remediatethem. Finally, use tradeoffs in your architecture to improve performance, such as using compression, using caching, or relaxing consistency requirements.

# Cost optimization
Eliminate unneeded expense

**Focus**
- Avoid unnecessary costs.
**Key topics**
- Understanding and controlling where money is being spent
- Selecting the most appropriate and right number of resource types
- Analyzing spend over time
- Scaling to meeting business needs without overspending

The *Cost Optimization pillar* focuses on the ability to avoid unnecessary costs. Key topics include: understanding and controlling where money is being spent, selecting the most appropriate and right number of resource types, analyzing spend over time, and scaling to meeting business needs without overspending.

## Design principles

There are five design principles that can optimize costs:
- *Implement Cloud Financial Management*–To achieve financial success and accelerate business value realization in the cloud, you need to invest in cloud financial management and cost optimization. You need to build capability through knowledge building, programs, resources, and processes to become a cost-efficient organization.
- *Adopt a consumption model*–Pay only for the computing resources that you require. Increase or decrease usage depending on business requirements, not by using elaborate forecasting.
- *Measure overall efficiency*–Measure the business output of the workload and the costs that are associated with delivering it. Use this measure to know the gains that you make from increasing output and reducing costs.
- *Stop spending money on undifferentiated heavy lifting* –AWS does the heavy lifting of racking, stacking, and powering servers, which meansthat you can focus on your customers and business projects instead of the IT infrastructure.
- *Analyze and attribute expenditure*–The cloud makes it easier to accurately identify system usage and costs, and attribute IT costs to individual workload owners. Having this capability helps you measure return on investment (ROI) and gives workload owners an opportunity to optimize their resources and reduce costs.

## Questions

**Practice cloud financial management**
- How do you implement cloud financial management?
**Expenditure and usage awareness**
- How do you govern usage?
- How do you monitor usage and cost?
- How do you decommission resources?
**Cost-effective resources**
- How do you evaluate cost when you select services?
- How do you meet cost targets when you select resource type, size, and number?
- How do you use pricing models to reduce cost?
- How do you plan for data transfer changes?
**Manage demand and supply resources**
- How do you manage demand and supply resources?
**Optimize over time**
- How do you evaluate new services?

The foundational questions for cost optimization fall under five best practice areas: practice cloud financial management, expenditure and usage awareness, cost-effective resources, manage demand and supply resources, and optimize over time.

Similar to the other pillars, there are tradeoffs to consider when evaluating cost. For example, you may choose to prioritize for speed—going to market quickly, shipping new features, or simply meeting a deadline—instead of investing in upfront cost optimization. As another example, designing an application for a higher level of availability typically costs more. You should identify your true application needs and use empirical data to inform your architectural design decisions. Perform benchmarking to establish the most cost-optimal workload over time.

# Key takeaways

Some key takeaways from this section of the module include:
- The AWS Well-Architected Framework provides a consistent approach to evaluate cloud architectures and guidance to help implement designs.
- The AWS Well-Architected Framework documents a set of design principles and best practices that enable you to understand if a specific architecture aligns well with cloud best practices. 
- The AWS Well-Architected Framework is organized into six pillars.
- Each pillar includes its own set of design principles and best practices.

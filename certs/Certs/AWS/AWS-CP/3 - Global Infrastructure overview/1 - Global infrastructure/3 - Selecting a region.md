There are a few factors that you should consider when you select the optimal Region or Regions where you store data and use AWS services. 

One essential consideration is **data governance and legal requirements.** Local laws might require that certain information be kept within geographical boundaries. Such laws might restrict the Regions where you can offer content or services. For example, consider the European Union (EU) Data Protection Directive. 

All else being equal, it is generally desirable to run your applications and store your data in a Region that is as close as possible to the user and systems that will access them. This will help you **reduce latency.** CloudPing is one website that you can use to test latency between your location and all AWS Regions. To learn more about CloudPing, see: http://www.cloudping.info/

Keep in mind that not all services are available in all Regions. To learn more, see: https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=tgi&loc=4.

Finally, there is some variation in the cost of running services, which can depend on which Region you choose. For example, as of this writing, running an On-Demand t3.medium size Amazon Elastic Compute Cloud (Amazon EC2) Linux instance in the US East (Ohio) Region costs $0.0416 per hour, but running the same instance in the Asia Pacific (Tokyo) Region costs $0.0544 per hour.

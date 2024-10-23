- Assess, audit, and eval the configurations of AWS resources
- Use of continuous monitoring of configs
- Automatically eval *recorded* configurations versus *desired* configurations
- Review configuration changes
- Simplify compliance auditing and security analysis

**AWS Config** is a service that enables you to assess, audit, and evaluate the configurations of your AWS resources. AWS Config continuously monitors and records your AWS resource configurations, and it enables you to automate the evaluation of recorded configurations against desired configurations. With AWS Config, you can review changes in configurations and relationships between AWS resources, review detailed resource configuration histories, and determine your overall compliance against the configurations that are specified in your internal guidelines. This enables you to simplify compliance auditing, security analysis, change management, and operational troubleshooting.

As you can see in the AWS Config Dashboard screen capture shown here, AWS Config keeps an inventory listing of all resources that exist in the account,and it then checks for configuration rule compliance and resource compliance. Resources that are found to be noncompliant are flagged, which alerts you to the configuration issues that should be addressed within the account.

AWS Config is a Regional service.To track resources across Regions, enable it in every Region that you use. AWS Config offers an aggregator feature that can show an aggregated view of resources across multiple Regions and even multiple accounts.

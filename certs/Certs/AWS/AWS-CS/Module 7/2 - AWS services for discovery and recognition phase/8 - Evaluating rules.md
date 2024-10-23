![[Pasted image 20240422000727.png]]

> [!For accessibility]
> Diagram of evaluating AWS Config rules. A configuration change occurs. In this example, an S3 bucket has been made public. AWS Config automatically evaluates the change. Results can be viewed in the console. Systems Manager and Amazon SNS are used to invoke automatic remediation and alerts. Files are delivered to an S3 bucket for analysis. 

As configuration changes occur in your AWS resources, AWS Config records and normalizes the changes into a consistent format. AWS Config automatically evaluates the recorded changes against the rules that you have set. You can then access the change history and compliance results by using the console or API. You can configure Systems Manager or Amazon SNS to be invoked, and remediate or alert you when changes happen. You can also deliver the change history and snapshot files of the monitored resources to an S3 bucket for analysis.

# Lambda for incident response
![[Pasted image 20240422003148.png]]

> [!Description]
> Diagram of using Lambda for incident response. User issues a StopLogging request to CloudTrail. CloudTrail and EventBridge invoke a Lambda function to automatically remediate the event. Processed information is sent as an SNS notification to a response analyst. Another Lambda function is invoked automatically to restart the logging.

With an event-driven response system, a detective mechanism invokes a responsive mechanism to automatically remediate the event. You can use event-driven response capabilities to reduce the time-to-value between detective mechanisms and responsive mechanisms. To create this event-driven architecture, you can use Lambda.

For example, assume that you have an AWS account with the AWS CloudTrail service enabled. If CloudTrail is ever disabled, the response procedure is to enable the service again and investigate the user who disabled the CloudTrail logging. You can use EventBridge to monitor for the specific “cloudtrail:StopLogging” event and invoke the function if it occurs. When EventBridge invokes this Lambda function, the functioncollects the details of the specific event. The details include information such as the identity of the principal that disabled CloudTrail, when it was disabled, and the specific resource that was affected. This processed information could then be sent as a notification through Amazon SNS. You can use this information to essentially perform a log dive and then generate a notification or alert with only the specific values that a response analyst would require. Another Lambda function could also be invoked to automatically restart the logging.

- Is a serverless event bus service that is used to connect your applications with data from a variety of sources.
- Provides a stream of real-time data from applications and services to targers, such as AWS Lambda or event busses
- Was formerly called Amazon CloudWatch Events

Amazon EventBridge is a serverless event bus service that makes it easier for you to build event-driven applications by connecting those applications with data from a variety of sources. The service connects applications by using events, which are signals that a system's state has changed. To use the service, you don't need to provision, patch, or manage any servers, and you don't need to install or maintain any software. EventBridge automatically scales based on the number of events ingested and has built-in fault tolerance.

Let's look at how can EventBridge be used to help you with your monitoring and auditing. You can monitor and audit your AWS environments and respond to operational changes in your applications in real-time to prevent infrastructure vulnerabilities. For example, when your resources are accessed by cross-accounts or public accounts, you can configure an Amazon Access Analyzer event to be generated and sent to an AWS Lambda Function using EventBridge to remove the unintended permissions.

EventBridge was formerly known as Amazon CloudWatch Events. CloudWatch Events and EventBridge use the same API, so any code that you were previously using with CloudWatch Events stays the same. Although both services are still supported, new features are only added to EventBridge.

For more information, see the Amazon EventBridge User Guide at:
https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html.

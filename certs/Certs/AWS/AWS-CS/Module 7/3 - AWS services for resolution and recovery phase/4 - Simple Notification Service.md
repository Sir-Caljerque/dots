- Is an event-driven web service that provides the ability for applications, end users, and devices to instantly send and receive notifications from the cloud.

|---------------------------|
Amazon SNS and Lambda are integrated, so you can invoke Lambda functions with Amazon SNS notifications. When a message is published to an Amazon SNS topic that has a Lambda function subscribed to it, the Lambda function is invoked with the payload of the published message. The Lambda function receives the message payload as an input parameter and can manipulate the information in the message, publish the message to other SNS topics, or send the message to other AWS services.

An enterprise can use Amazon SNS to receive notifications of potential exploits.

For more information, see the Amazon Simple Notification Service Developer Guide at:
https://docs.aws.amazon.com/sns/latest/dg/welcome.html.

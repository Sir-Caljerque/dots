# Lambda
- AWS Lambda is a serverless, event-driven compute service that provides the ability to run code on demand without provisioning or managing servers
    - You pay only for the compute time that you consume, and you aren't charged when your code is not running. With Lambda, you can run code for virtually any type of application or backend service, all with no administration. Just upload your code, and Lambda takes care of everything required to run and scale your code with high availability. You can set up your code to be automatically invoked from other AWS services or call it directly from any web or mobile app.
- **Lambda functions are stateless**, with no affinity to the underlying infrastructure. This means that Lambda can rapidly launch as many copies of the function as needed to scale to the rate of incoming events. After you upload your code to Lambda, you can associate your function with specific AWS resources, such as a particular Amazon Simple Storage Service (Amazon S3) bucket or SNS topic. Then, when the resource changes, Lambda runs your function and manages the compute resources as needed to keep up with incoming requests.

If you need to store secrets to access external services, you can use the AWS Key Management Service (AWS KMS) to store and retrieve the secrets within your Lambda function.

How a Lambda function is invoked depends on the event source that you use with it:
- For event-based invocation, some event sources can publish events to Lambda and directly invoke your Lambda function. This is called the push model, where the event sources invoke your Lambda function.
- Some event sources publish events, but Lambda must poll the event source and invoke your Lambda function when events occur. This is called the pull model.
- Request-response invocationcauses Lambda to run the function synchronously and return the response immediately to the calling application. This invocation type is available for custom applications.

For more information, see the AWS Lambda Developer Guide at:
https://docs.aws.amazon.com/lambda/latest/dg/welcome.html.
To connect to an AWS service, you must use the URL of the entry point of that service, known as an endpoint.

The AWS software development kits (SDKs) and AWS CLI use the default endpoint for each service in an AWS Region. An example of an Amazon Elastic Compute Cloud (Amazon EC2) endpoint is [ec2.us-east-1.amazonaws.com], which is the US East (N. Virginia) service endpoint for Amazon EC2. Using regional endpoints is extremely helpful when making direct API calls for individual AWS services within the same Region.

You can specify alternate endpoints for API requests based on config requirements

You can create endpoint policies and attach them to endpoints, but the endpoint policies will not override or replace IAM user policies or service-specific policies. An endpoint policy is a separate policy to only control access from the endpoint to the specified service. You can only attach one endpoint policy to an endpoint, but you can modify the policy at any time. These policies are similar to IAM policies but differ in that they must contain a principal element, and the size of the endpoint policy cannot exceed 20,480 characters.
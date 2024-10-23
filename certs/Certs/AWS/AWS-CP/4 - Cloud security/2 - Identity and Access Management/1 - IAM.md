- Use **IAM** to manage access to **AWS resources** –
    - A resource is an entity in an AWS account that you can work with
    - Example resources; An Amazon EC2 instance or an Amazon S3 bucket
- Example – Control who can terminate Amazon EC2 instances 
- Define fine - grained access rights –
    - **Who** can access the resource
    - **Which** resources can be accessed and what can the user do to the resource
    - **How** resources can be accessed 
- IAM is a no-cost AWS account feature

**AWS Identity and Access Management (IAM)**allows you to control access to compute, storage, database, and application services in the AWS Cloud.IAM can be used to handle authentication, and to specify and enforce authorization policies so that you can specify which users can access which services. 

IAM is a tool that centrally manages access to launching, configuring, managing, and terminating resources in your AWS account. It provides granular control over access to resources, including the ability to specify exactly which **API** calls the user is authorized to make to each service. Whether you use the AWS Management Console, the AWS CLI, or the AWS SDKs, every call to an AWS service is an API call.

With IAM, you can manage *which*resources can be accessed by who,and howtheseresourcescan be accessed. You can grant different permissions to different people for different resources. For example, you might allow some users full access to Amazon EC2, Amazon S3, Amazon DynamoDB, Amazon Redshift, and other AWS services. However, for other users, you might allow read-only access to only a few S3 buckets.Similarly, you might grant permission to other users to administer only specific EC2 instances.You could also allow a few usersto access only the account billing information, but nothing else.

IAM is a feature of your AWS account, and it is offered at no additional charge

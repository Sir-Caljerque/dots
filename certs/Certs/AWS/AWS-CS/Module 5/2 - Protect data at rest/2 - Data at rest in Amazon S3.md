## Data stored in Amazon S3 is private by default and requires AWS credentials for access
- Use bucket policies for granular access to objects
- Consider encrypting data at rest

--------------------------------------------------------------------------
By default, all Amazon S3 resources—buckets, objects, and related sub-resources (for example, life-cycle configuration and website configuration)—are private. Only the resource owner, the AWS account that created it, can access the resource.The resource owner can grant access permissions to others by writing an access policy.

You can modify bucket policies to allow additional access, and AWS provides a number of tools to configure buckets for a wide variety of workloads. For example, the S3 Block Public Access feature acts as an additional layer of protection to prevent accidental exposure of data

In addition, consider encrypting data at rest in Amazon S3

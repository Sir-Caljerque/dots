# Step 3: Use AWS CloudTrail.
- CloudTrail tracks user activity on your account.
    - Logs all API requests to resources in all supported services your account.
- Basic AWS CloudTrail event history is enabled by defaultand is free.
    - It contains all management event data on latest 90 days of account activity.
- To access CloudTrail –
    1.Log in to the AWS Management Consoleand choose the CloudTrailservice.
    2.Click Event historyto view, filter, and search the last 90 days of events.
- To enable logs beyond 90 days and enable specified event alerting, create a trail.
    1.From the CloudTrail Console trails page, click Create trail.
    2.Give it a name, apply it to all Regions, and create a new Amazon S3 bucket for log storage. 
    3.Configure access restrictions on the S3 bucket (for example, only admin users should have access).

AWS CloudTrail is a service that logs all API requests to resources in your account. In this way, it enables operational auditing on your account. 

AWS CloudTrail is enabled on account creation by default on all AWS accounts, and it keeps a record of the last 90 days of account management event activity. You can view and download the last 90 days of your account activity for create, modify, and deleteoperations of services that are supported by CloudTrail without needing to manually create another trail. See more on the supported services at https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-aws-service-specific-topics.html.

To enable CloudTrail log retention beyond the last 90 days and to enable alerting whenever specified events occur, create a new trail (which is described at a highlevel on the slide). For detailed step-by-step instructions about how to create a trail in AWS CloudTrail, see creating a trail in the AWS documentation at https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-create-a-trail-using-the-console-first-time.html.

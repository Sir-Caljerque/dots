![[Pasted image 20240422003429.png]]

This slide provides an example of how to use Step Functions, Lambda, CloudFormation, and Amazon SNS to remediate a compromised instance. First, a script or third-party tool pushes an instance ID to an SNS topic. Then, a Lambda function verifies the ID and, if compromised, initiates the following Step Functions workflow:
1. The instance is removed from its Auto Scaling group, and a snapshot is created of any attached Amazon Elastic Block Store (Amazon EBS) volumes.
2. The instance is isolated by removing all its previously associated security groups. Then, a new forensics security group is assigned to the instance with no inbound or outbound permissions.
3. A CloudFormation template is used to create a new environment, including a new VPC that contains a forensics instance with prebuilt tools attached to a copy of any volumes from the snapshots.
4. A basic forensics investigation is performed on the attached volumes.
5. A report is then generated with the results from the investigation and sent to the team through an SNS topic.

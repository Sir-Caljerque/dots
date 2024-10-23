![[Pasted image 20240309165502.png]]

Code snippet of an allow statement portion of an IAM policy. The highlighted portion show a configuration that allows an entity to perform any DynamoDB or S3 action on a specific DynamoDB table and two S3 buckets.

To understand how IAM policy logic works, consider this example. The first half of this policy gives users access to only the following resources:
- DynamoDB table named coursenotes
- S3 bucket named course-notes-web
- S3 bucket named course-notes-mp3 and all the objects that it contains
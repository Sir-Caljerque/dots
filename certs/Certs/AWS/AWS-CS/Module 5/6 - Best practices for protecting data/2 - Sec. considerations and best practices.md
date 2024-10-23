- Consider encryption of data at rest, and reinforce encryption of data in transit
- Ensure that your S3 buckets use the correct policies and are not publicly accessible
- Use the principle of least privilege
- Enable MFA delete for buckets
- Enforce encryption for each PUT request
- Use presigned URLs for apps that refer to Amazon S3 objects

To ensure that you provide the correct balance of security and operational flexibility, AWSrecommends the followingbest practices when using Amazon S3:

Use encryption as an additional access control to complement the identity, resource, and network-oriented access controls already described. AWS provides a number of features that can help you to easily encrypt data and manage the keys. All AWS services offer the ability to encrypt data at rest and in transit.
- Use bucket policies alongwithIAM policies to protect resources from unauthorized access and to prevent information disclosure, data integrity compromise, or deletion.
- Set IAM and bucket policies with the least privileges. For example, if an application is expected to upload objects, then the respective IAM role should not have read permissions for the object or any other permissions.
- Enable MFA delete for versioning-enabled buckets to ensure that files cannot be removed or tampered with.•Enforce SSE for each PUT request. This would lead to a deny in cases where the enduser doesn’t request SSE.
- Use presigned URLs for applications that refer to S3 objects with anonymous access; for example, downloading restricted content. Authentication and authorizationmust be done in the application

# **Helps you manage public access to S3 resources** 
Amazon S3 provides a number of security features to consider as you develop and implement your own security policies. Amazon S3 provides the Block Public Access feature to help you manage public access to S3 resources. By default, new buckets and objects don't allow public access, but users can modify bucket policies or object permissions to allow public access. S3 Block Public Access provides settings that override these policies and permissions so that you can limit public access to these resources.

# Four settings
- **BlockPublicAcls:** Prevent any new operations to make buckets or objects public through bucket or object ACLs. Existing policies and ACLs for buckets and objects are not modified.
- **IgnorePublicAcls:** Ignore all public ACLs on a bucket and any objects that it contains.
- **BlockPublicPolicy:** Reject calls to PUT a bucket policy if the specified bucket policy allows public access. (Enabling this setting doesn't affect existing bucket policies.)
- **RestrictPublicBuckets:** Restrict access to a bucket with a public policy to only AWS services and authorized users within the bucket owner's account.

-------------------------------------------------------------
These settings are independent and can be used in any combination. You can apply each setting to an access point, a bucket, or an entire AWS account. You cannot apply these settings on a per-object basis. If the block public access settings for the access point, bucket, or account differ, then Amazon S3 applies the most restrictive combination of the access point, bucket, and account settings.

When Amazon S3 receives a request to access a bucket or an object, the service determines whether the bucket or the bucket owner's account has a block public access setting applied. If an existing block public access setting prohibits the requested access, Amazon S3 rejects the request.

In addition to these settings, the Amazon S3 console highlights your publicly accessible buckets, indicates the source of public accessibility, and also warns you if changes to your bucket policies or bucket ACLs would make your bucket publicly accessible.

For more information, see Blocking Public Access to Your Amazon S3 Storage in the Amazon Simple Storage Service User Guide at:
https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html.

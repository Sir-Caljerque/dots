- To encrypt all objects, set default encryption on a bucket
- If using S3 Object Lock, use the appropriate retention mode.
- Use S3 Block Public Access
- Upload data to Amazon S3 over SSH File Transfer Protocol (SFTP) through AWS Transfer for SFTP
- Enable S3 versioning

The following are additional best practices when using Amazon S3:
- Set default encryption on a bucket if you want all objects to be encrypted once stored in the bucket.
- While using S3 Object Lock, use the appropriate retention mode (governance mode or compliance mode). These retention modes apply different levels of protection to your objects. You can apply either retention mode to any object version that is protected by S3 Object Lock.
- Use S3 Block Public Access settings to enforce that buckets don't allow public access to data. 
- Upload data to Amazon S3 over SSH File Transfer Protocol (SFTP) by using AWS Transfer for SFTP. This fully managed service provides file transfer over SFTP directly in and out of Amazon S3. Using this service eliminates the need for you to manage SFTP-related infrastructure.With the data in Amazon S3, you can easily integrate it into workloads that use a broad array of AWS services.
- Use S3 Versioning to preserve, retrieve, and restore every version of every object stored in your S3 bucket

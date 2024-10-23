- Creates a new version with every upload
- Protects from unintended deletion
- Provides retrieval of deleted objects
- Can be used with lifecycle policies for cost savings
- Cant be turned off once enabled
- Offers MFA delete for extra security

Another security feature to consider is Versioning. It is amethod of keeping multiple variants of an object in the same bucket. With this feature, you can preserve, retrieve, and restore every version of every object stored in your buckets. By default, S3 Versioning is disabled on buckets, and you must explicitly enable it.

Versioning can help you to recover objects from accidental deletion or overwrite. For example, if you delete an object, instead of removing it permanently, Amazon S3 inserts a delete marker, which becomes the current object version. You can always restore the previous version. Overwriting an object results in a new object version in the bucket, but you can always restore the previous version.

With versioning enabled, the most recently written version will be retrieved by default. You can retrieve older versions of an object by specifying the version in your request.

To customize your data retention approach and control storage costs, use object versioning with S3 Lifecycle.

After you enable versioning for a bucket, you can't return it to an unversioned state. You can, however, suspend versioning on a bucket, which stops accruing new versions of the same object in a bucket. You might do this because you only want a single version of an object in a bucket. Or, you might not want to accrue charges for multiple versions. When you suspend versioning, existing objects in your bucket do not change.

When working with S3 Versioning in Amazon S3 buckets, you can optionally add another layer of security by enabling multi-factor authentication (MFA) delete. When you do this, the bucket owner must include two forms of authentication in any request to delete a version or change the versioning state of the bucket.

For more information, see Using Versioning in S3 Buckets in the Amazon Simple Storage Service User Guide at:
https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html.

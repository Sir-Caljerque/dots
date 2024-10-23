![[Pasted image 20240420181949.png]]

- Stores objects by using the write-once-read-many (WORM) model
- Works only in versioned buckets
- Provides the ability to manage object retention
- Provides 2 retention models:
    - Governance
    - Compliance

Finally, with Object Lock, you can store objects by using a write-once-read-many(WORM) model. This featureprovides protection for scenarios where it's imperative that data is not changed or deleted. The feature canprovide protection for a fixed amount of time or indefinitely. You can use Object Lock to meet regulatoryrequirements that require WORM storage, or add an extra layer of protection against object changes anddeletion.

Note that Object Locks works only in versioned buckets.

Object Lock provides two ways to manage object retention: retention periods and legal holds. A retention periodspecifies a fixed period during which an object remains locked. During this period, your object is WORM-protected and can't be overwritten or deleted. A legal hold provides the same protection as a retention period but has no expiration date. Instead, a legal hold remains in place until you explicitly remove it

You can configure Object Lock in one of two modes. In 
governance mode, users can't overwrite or delete an object version or alter its lock settings unless they have special permissions. If you require stronger immutability to comply with regulations, you can use compliance mode. In compliance mode, a protected object version can't be overwritten or deleted by any user, including the root user in your AWS account

For more information, see How S3 Object Lock Works in the Amazon Simple Storage Service User Guide at:
https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-overview.html.

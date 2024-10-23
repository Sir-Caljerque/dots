- Generate an S3 presigned URL, and use it to upload files (objects)
- A presigned URL uses three parameters to limit user access:
    - Bucket: Bucket that objects is in (or will be in)
    - Key: Name of the object
    - Expires: Amount of time that the URL is valid

All objects in an S3 bucket are private by default. Only the object owner has permissions to access these objects. However, the object owner can optionally share objects with others by creating a presigned URL, using their own security credentials, to grant time-limited permissions to upload or download the objects.

A presigned URL provides temporary access to a specific S3 object. By using the URL, a user can either read, write, or update the object. For example, if you have a video in your bucket and both the bucket and the video are private, you can share the video with others by generating a presigned URL.

Similarly, if you want to receive an object from a user without an AWS account, they can upload an object by using a presigned URL that you share with them.

For more information, see Generating a Presigned URL to Upload an Object in the Amazon Simple Storage Service User Guide at 
https://docs.aws.amazon.com/AmazonS3/latest/userguide/PresignedUrlUploadObject.html.

# SSE-E
## customer-provided keys
- You retain control of the keys
- Amazon S3 doesnt store the enncryption keys that you provide

With server-side encryption with customer-provided keys (SSE-C), you manage the encryption keys. With the encryption key that you provide as part of the request, Amazon S3 manages the encryption (as it writes to disks) and decryption (when you access your objects). You don't maintain the code to perform data encryption and decryption—you only maintain the keys.

Amazon S3 does not store the encryption key that you provide. Instead, a randomly salted hash-based message authentication code (HMAC) value of the encryption key is stored to validate future requests. The salted HMAC value cannot be used to derive the value of the encryption key or decrypt the contents of the encrypted object. So, if you lose the encryption key, you lose the object.

# SSE-S3
## Amazon S3 managed keys
- AWS manages the keys
- The encrypted data and keys are stored in separate hosts.

When you use server-side encryption with Amazon S3 managed keys (SSE-S3), each object is encrypted with a unique key. As an additional safeguard, Amazon S3 encrypts the key itself with a key that the service regularly rotates. SSE-S3 uses one of the strongest block ciphers available, 256-bit Advanced Encryption Standard (AES-256), to encrypt your data.

# SSE-KMS
## AWS KMS keys
- AWS manages the keys
- An envelope key is used for added protection

Server-side encryption with AWS KMS keys (SSE-KMS) is similar to SSE-S3 but with some additional benefits and charges for using the service. There are separate permissions for the use of a KMS key that provide added protection against unauthorized access of your objects in Amazon S3. SSE-KMS also provides you with an audit trail that shows when your KMS key was used and by whom. Additionally, you can create and manage customer managed KMS keys or use AWS managed KMS keys that are unique to you, your service, and your Region. AWS KMS usesenvelope encryptionto further protect your data. Envelope encryption is the practice of encrypting your plaintext data with a data key and then encrypting that data key with a root key.

For more information about the server-side encryption options in Amazon S3, see Protecting Data Using Server-Side Encryption in the Amazon Simple Storage Service User Guide at:
https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html.

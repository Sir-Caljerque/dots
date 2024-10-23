# Encryption
![[Pasted image 20240420185108.png]]

In this scenario, AMS KMS is used to encrypt data at rest (SSE-KMS). The user creates a KMS key and uses it to encrypt objects that are stored in Amazon S3.

This diagram explains how encryption happens when uploading a file to Amazon S3:
1. You request to upload a file and store it as an encrypted object in an S3 bucket.
2. Amazon S3 requests a data key from AWS KMS to use to encrypt the file.
3. AWS KMS generates a plaintext data key and encrypts the data key by using the customer managed key.
4. AWS KMS sends both copies of the data key to Amazon S3.
5. Amazon S3 encrypts the object by using the plaintext data key, stores the object, and then deletes the plaintext data key. The encrypted key is kept in the object metadata.

# Decryption
![[Pasted image 20240420185345.png]]
Now, this diagram explains what happens in the same scenario (SSE-KMS) when the user requests to open an encrypted object that is stored in Amazon S3:

1. You request to open the object.
2. Amazon S3 notices that the requested object is encrypted.
3. Amazon S3 sends the encrypted copy of thedata keythat the object is encrypted with to AWS KMS.
4. AWS KMS thendecrypts the data key by using the customer managed key (which never leaves the AWS KMS service).
5. AWS KMS then sends the plaintext data keyback to Amazon S3.
6. Finally, Amazon S3 decrypts the ciphertext of the data object, allows you to open the object, and deletes the plaintext copy of the data key.

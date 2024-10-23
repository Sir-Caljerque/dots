# AWS Key Management Service (AWS KMS)
- Provides the ability to create and manage cryptographic keys
- Usees hardware modules (HMSs) to protect your keys
- Is integrated with other AWS services
- Provides the ability to set usage policies to determine which users can use keys

AWS KMS is a managed service that provides the ability to create and control the keys that are used to encrypt your data. You can create data keys with unique aliases and descriptions for better management, automatically rotate your keys on a scheduled basis, and disable or delete keys so that no one can use them. You can also import your own keys instead of using AWS generated keys.

The service usesFIPS 140-2 validated hardware security modules (HSMs) to protect keys. AWS KMS is integrated with other AWS services to help you protect the data that you store with these services. Integrated AWS services use envelope encryption to help protect your encryption keys.

With AWS KMS, you can centrally manage and securely store your keys. You can use the keys within your applications and supported AWS Cloud services to protect your data, but the keys never leave AWS KMS. This reduces the risk of having your data key compromised. You submit data to AWS KMS to be encrypted or decrypted under keys that you control.

You can set usage policies on these keys to determine which users can use them. All requests to use these keys are logged in AWS CloudTrail, so that you can understand who used which key and when. CloudTrail logs all AWS KMS operations, including read-only operations; operations that manage KMS keys; andcryptographic operations.

For more information, see the following resources:
- AWS Key Management Service (AWS KMS) at https://aws.amazon.com/kms/
- How AWS Services Use AWS KMS in the AWS Key Management Service Developer Guide at https://docs.aws.amazon.com/kms/latest/developerguide/service-integration.html

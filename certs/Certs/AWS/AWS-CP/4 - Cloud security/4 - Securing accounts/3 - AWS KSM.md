AWS Key Management Service (AWS KMS) features:
- Enables you to create and manage encryption keys
- Enables you to control the use of encryption across AWS services and in your applications.
- Integrates with AWS CloudTrail to log all key usage.
- Uses hardware security modules (HSMs) that are validated by Federal Information Processing Standards (FIPS) 140-2 to protect keys

**AWS Key Management Service (AWS KMS)** is a service that enables you to create and manage encryption keys, and to control the use of encryption across a wide range of AWS services and your applications. AWS KMS is a secure and resilient service that uses hardware security modules (HSMs) that were validated under **Federal Information ProcessingStandards (FIPS) 140-2**(or are in the process of being validated) to protect your keys. AWS KMS also integrates with AWS CloudTrail to provide you with logs of all key usage to help meet your regulatory and compliance needs.

**Customer master keys (CMKs)** are used to control access to data encryption keys that encrypt and decrypt your data. You can create new keys when you want, and you can manage who has access to these keysand who can use them. You can also import keys from your own key management infrastructure into AWS KMS. 

AWS KMS integrates with most AWS services,which means that you can use AWS KMS CMKs to control the encryption of the data that you store in these services.Tolearn more, seeAWS Key Management Service features at https://aws.amazon.com/kms/features/.

# 1 - AWS orgs

- **AWS Organizations** enables you to consolidate multiple AWS accounts so that you centrally manage them.
- *Security features* of AWS Organizations:
    - **Group AWS accounts into organizational units**(OUs) and attach different access policies to each OU.
    - **Integration and support for IAM**
        - Permissions to a user are the intersection of what is allowed by AWS Organizations and what is granted by IAM in that account.
    - **Use service control policies**to establish control over the AWS services and API actions that each AWS account can access 

**AWS Organizations**is an account management service that enables you to consolidate multiple AWS accounts into anorganizationthat you create and centrally manage. Here, the focus is on the security features that AWS Organizations provides. 

One helpful security feature is that you can **group accounts into organizational units**(OUs) and attach different access policies to each OU. For example, if you have accounts that should only be allowed to access AWS services that meet certain regulatory requirements, you can put those accounts into one OU. You then can define a policy that blocks OU access to services that do not meet those regulatory requirements, and then attach thepolicy to the OU. 

Another security feature is that **AWS Organizations**integrates **with and supports IAM.** AWS Organizations expands that control to the account level by giving you control over what users and roles in an account or a group of accounts can do. The resulting permissions are the logical intersection of what is allowed by the AWS Organizations policy settings and what permissions are explicitly granted by IAM in the account for that user or role. The user can access only what is allowed byboththe AWS Organizations policies and IAM policies. 

Finally, AWS Organizations **provides service control policies (SCPs)** that enable you to specify the maximum permissions that member accounts in the organization can have. In SCPs, you can restrict which AWS services, resources, and individual actions the users and roles in each member account can access. **These restrictions even override the administrators of member accounts**. When AWS Organizations blocks access to a service, resource, or API action, a user or role in that account can't access it, even if an administrator of a member account explicitly grants such permissions.

# 2 - Service control policies

- Service control policies (SCPs) offer centralized control over accounts.
    - Limit permissions that are available in an account that is part of an organization.
- Ensures that accounts comply with access control guidelines.
- SCPs are similarto IAM permissions policies –
    - They use similar syntax.
    - However, an SCP never grants permissions. 
    - Instead, SCPs specify the maximum permissions for an organization.

Hereis a closer look at the **Service control policies (SCPs)** feature of AWS Organizations. 

SCPs offer central control over the **maximum available permissions**for all accounts in your organization, enabling you to ensure that your accounts stay in your organization’s access control guidelines. SCPs are available only in an organization that hasall features enabled, including consolidated billing. See more on enabling features at https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html. SCPs aren't available if your organization has enabled onlythe consolidated billing features. For instructions about enabling SCPs, seeEnabling and Disabling a Policy Type on a Root at https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root.

**SCPs are similar to IAM permissions policies**and they use almost the same syntax. However, an SCP never grants permissions. Instead, SCPs are JSON policies that specify the maximum permissions for an organization or OU. Attaching an SCP to the organization root or an organizational unit (OU) defines a safeguard for the actions that accounts in the organization root or OU can do. However, it is not a substitute for well-managed IAM configurations within each account.You must still attachIAM policiesto users and roles in your organization's accounts to actually grant permissions to them. See more on IAM policies at https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html.

# 3 - AWS KSM

AWS Key Management Service (AWS KMS) features:
- Enables you to create and manage encryption keys
- Enables you to control the use of encryption across AWS services and in your applications.
- Integrates with AWS CloudTrail to log all key usage.
- Uses hardware security modules (HSMs) that are validated by Federal Information Processing Standards (FIPS) 140-2 to protect keys

**AWS Key Management Service (AWS KMS)** is a service that enables you to create and manage encryption keys, and to control the use of encryption across a wide range of AWS services and your applications. AWS KMS is a secure and resilient service that uses hardware security modules (HSMs) that were validated under **Federal Information ProcessingStandards (FIPS) 140-2**(or are in the process of being validated) to protect your keys. AWS KMS also integrates with AWS CloudTrail to provide you with logs of all key usage to help meet your regulatory and compliance needs.

**Customer master keys (CMKs)** are used to control access to data encryption keys that encrypt and decrypt your data. You can create new keys when you want, and you can manage who has access to these keysand who can use them. You can also import keys from your own key management infrastructure into AWS KMS. 

AWS KMS integrates with most AWS services,which means that you can use AWS KMS CMKs to control the encryption of the data that you store in these services.Tolearn more, seeAWS Key Management Service features at https://aws.amazon.com/kms/features/.

# 4 - Cognito

Amazon Cognito features:
- Adds user sign-up, sign-in, and access control to your web and mobile applications.
- Scales to millions of users.
- Supports sign-in with social identity providers, such as Facebook, Google, and Amazon; and enterprise identity providers, such as Microsoft Active Directory via Security Assertion Markup Language (SAML) 2.0.

Amazon Cognito provides solutions to control access to AWS resources from your application. You can define roles and map users to different roles so your application can access only the resources that are authorized for each user.

Amazon Cognito uses common identity management standards, such as **Security Assertion Markup Language (SAML)** 2.0.SAMLis an open standard for exchanging identity and security information with applications and service providers. Applications and service providers that support SAML enable you to sign in by using your corporate directory credentials, such as your username and password from Microsoft Active Directory. With SAML, you can use single sign-on (SSO) to sign in to all of your SAML-enabled applications by using a single set of credentials.

Amazon Cognito helps you **meet multiple security and compliance requirements**, including requirements for highly regulated organizations such as healthcare companies and merchants. Amazon Cognito is eligiblefor use with the US Health Insurance Portability and Accountability Act (HIPAA –see more on HIPAA at https://aws.amazon.com/compliance/hipaa-compliance/).It can also be used for workloads that are compliant with the Payment Card IndustryData Security Standard(PCI DSS –more on PCI DSS at https://aws.amazon.com/compliance/pci-dss-level-1-faqs/); the American Institute of CPAs (AICPA) Service Organization Control (SOC –more on SOC at https://aws.amazon.com/compliance/soc-faqs/); the International Organization for Standardization (ISO) and International Electrotechnical Commission (IEC) standards. More onISO/IEC 27001 at https://aws.amazon.com/compliance/iso-27001-faqs/,ISO/IEC 27017 at https://aws.amazon.com/compliance/iso-27017-faqs/, andISO/IEC 27018 at https://aws.amazon.com/compliance/iso-27018-faqs/;andISO 9001 at https://aws.amazon.com/compliance/iso-9001-faqs/.

# 5 - AWS shield

- **AWS* Shield* features:
    - Is a managed distributed denial of service (DDoS) protection service
    - Safeguards applications running on AWS
    - Provides always-on detection and automatic inline mitigations 
    - AWS Shield Standard enabled for at no additional cost. AWS Shield Advancedis an optional paid service.
- Use it to **minimize application downtime and latency**.

**AWS Shield** 
is a managed distributed denial of service (DDoS) protection service that safeguards 
applications that run on AWS. It provides always
-
on detection and automatic inline mitigations 
that minimize application downtime and latency, so there is no need to engage AWS Support to 
benefit from DDoS protection. 

AWS Shield helps protects your website from all types of DDoS attacks, including Infrastructure layer attacks (like User Datagram Protocol—or UDP—floods), state exhaustion attacks (like TCP SYN floods), and application-layer attacks (like HTTP GET or POST floods). For examples,see the AWS WAF Developer Guide at https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

**AWS Shield Standard** is automatically enabled to all AWS customers at no additional cost.

**AWS Shield Advanced** is an optional paid service. AWS Shield Advanced provides additional protections against more sophisticated and larger attacks for your applications that run on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, AWS Global Accelerator, and Amazon Route 53. AWS Shield Advanced is available to all customers. However, to contact the DDoS Response Team, customers need tohave either Enterprise Support or Business Support from AWS Support.


# 1 - AWS compliance programs

- Customers are subject to many different security and compliance regulations and requirements.
- AWS engages with certifying bodies and independent auditors to provide customers with detailed information about the policies, processes, and controls that are established and operated by AWS.
    - Compliance programs can be broadly categorized –
    - Certifications and attestations
        - Assessed by a third-party, independent auditor
        - Examples: ISO27001,27017,27018, and ISO/IEC9001
    - Laws, regulations, and privacy
        - AWS provides security features and legal agreements to support compliance 
        - Examples: EU **General Data Protection Regulation (GDPR)**, HIPAA
    - Alignments and frameworks
        - Industry-or function-specific security or compliance requirements
        - Examples: Center for Internet Security (CIS), EU-US Privacy Shield certified

AWS engages with external certifying bodies and independent auditors to provide customers with information about the policies, processes, and controls that are established and operated by AWS.

A full Listing of AWS Compliance Programs is available at https://aws.amazon.com/compliance/programs/. Also, for details about which AWS services are in scope of AWS assurance programs, see AWS Services in Scope by Compliance Program at https://aws.amazon.com/compliance/services-in-scope/

As an example of a certification for which you can use AWS services to meet your compliance goals,consider the **ISO/IEC 27001:2013** certification. It specifies the requirements for establishing, implementing, maintaining,and continually improving an Information Security Management System. The basis of this certification is the development and implementation of a rigorous security program, which includes the development and implementation of an Information Security Management System.The Information Security Management System defines how AWS perpetually manages security in a holistic, comprehensive manner.

AWS also provides security features and legal agreements that are designed to help support customers with common regulations and laws. One example is the **Health Insurance Portability and Accountability Act (HIPAA)** regulation. Anotherexample, the European Union(EU) **General Data Protection Regulation (GDPR)** protects European Union data subjects' fundamental right to privacy and the protection of personal data. It introduces robust requirements that will raise and harmonize standards for data protection, security, and compliance. The GDPR Center at https://aws.amazon.com/compliance/gdpr-center/contains many resources to help customers meettheircompliance requirements with this regulation.

# 2 - Config

- Assess, audit, and eval the configurations of AWS resources
- Use of continuous monitoring of configs
- Automatically eval *recorded* configurations versus *desired* configurations
- Review configuration changes
- Simplify compliance auditing and security analysis

**AWS Config** is a service that enables you to assess, audit, and evaluate the configurations of your AWS resources. AWS Config continuously monitors and records your AWS resource configurations, and it enables you to automate the evaluation of recorded configurations against desired configurations. With AWS Config, you can review changes in configurations and relationships between AWS resources, review detailed resource configuration histories, and determine your overall compliance against the configurations that are specified in your internal guidelines. This enables you to simplify compliance auditing, security analysis, change management, and operational troubleshooting.

As you can see in the AWS Config Dashboard screen capture shown here, AWS Config keeps an inventory listing of all resources that exist in the account,and it then checks for configuration rule compliance and resource compliance. Resources that are found to be noncompliant are flagged, which alerts you to the configuration issues that should be addressed within the account.

AWS Config is a Regional service.To track resources across Regions, enable it in every Region that you use. AWS Config offers an aggregator feature that can show an aggregated view of resources across multiple Regions and even multiple accounts.

# 3 - Artifact

- Is a resource for compliance-related information
- Provide access to security and compliance reports, and select online agreements
- Can access example downloads:
    - AWS ISO certifications
    - Payment Card Industry (PCI) and Service Organization Control (SOC) reports
- Access AWS Artifact directly from the AWS Management Console
    - Under Security, Identify & Compliance, click Artifact

**AWS Artifact** provides on-demand downloads of AWS security and compliance documents, such as AWS ISO certifications, Payment Card Industry (PCI), and Service Organization Control (SOC) reports. You can submit the security and compliance documents (also known asaudit artifacts) to your auditors or regulators to demonstrate the security and compliance of the AWS infrastructure and services that you use. You can also use these documents as guidelines to evaluate your own cloud architecture and assess the effectiveness of your company's internal controls. AWS Artifact provides documents about AWS only. AWS customers are responsible for developing or obtaining documents that demonstrate the security and compliance of their companies.

You can also use AWS Artifact to review, accept, and track the status of AWS agreements such as the Business Associate Agreement (BAA). A BAA typically is required for companies that are subject to HIPAA to ensure that protected health information (PHI) is appropriately safeguarded. With AWS Artifact, you can accept agreements with AWS and designate AWS accounts that can legally process restricted information. You can accept an agreement on behalf of multiple accounts. To accept agreements for multiple accounts, use AWS Organizations to create an organization. To learn more, see Managing agreements in AWS Artifact at https://docs.aws.amazon.com/artifact/latest/ug/managing-agreements.html.

# 4 - Key takeaways

Some keytakeaways from this section of the module include:
- AWS security compliance programs provide information about the policies, processes, and controls that are established and operated by AWS.
- AWS Config is used to assess, audit, and evaluate the configurations of AWS resources.
- AWS Artifact provides access to security and compliance reports.


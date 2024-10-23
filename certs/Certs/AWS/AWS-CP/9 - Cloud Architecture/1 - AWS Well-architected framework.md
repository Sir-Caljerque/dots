# Architecture: Designing and building

![[Pasted image 20240826172707.png]]

Architecture is the art and science of designing and building large structures. Large systems require architects to manage their size and complexity. 

Cloud architects:
- Engage with decision makers to identify the business goal and the capabilities that need improvement. 
- Ensure alignment between technology deliverables of a solution and the business goals.
- Work with delivery teams that are implementing the solution to ensure that the technology features are appropriate. 

Having well-architected systems greatly increases the likelihood of business success.

# What is the AWS Well-Architected Framework?

- A guide for designing infrastructures that are:
    - Secure
    - High-performing
    - Resilient
    - Efficient
- A consistent approach to evaluating and implementing cloud architectures
- A way to provide best practices that were developed through lessons learned by reviewing customer architectures

The AWS Well-Architected Framework is a guide that is designed to help you build the most secure, high-performing, resilient, and efficient infrastructure possible for your cloud applications and workloads. It provides a set of foundational questions and best practices that can help you evaluate and implement your cloud architectures. AWS developed the Well-Architected Framework after reviewing thousands of customer architectures on AWS.

# Pillars of the AWS Well-Architected Framework1

![[Pasted image 20240826173058.png]]

The Well-Architected Framework is organized into six pillars: operational excellence, security, reliability, performance afficiency, cost optimization, and sustainability. The first 5 pillars have been a part of the framework since its foundation in 2015. The sustainability pillar was added as the sixth pillar in 2021 to help organizations learn how to minimize the environmental impacts of runnuing cloud workloads

The remainder of this module focuses of the first 5 pillars (operational excellence, security, reliability, performance afficiency, cost optimization) and leads you through a review of an example architecture against each pillar's design principles.

For more about the sustainability pillar, refer to the sustainability pillar section within the Well-Architected Framework documentationsee https://docs.aws.amazon.com/wellarchitected/latest/sustainability-pillar/sustainability-pillar.html.

> [!NOTE]
> The pillars include operational excellence, security, reliability, performance efficiency, cost optimization, and sustainability. 

# Pillar organization

**Best practice area:** - Identity and Access Management
**Question text:** - SEC1: How do you manage credentials and authentication?
**Question context** - Credential and authentication mechanisms include passwords, tokens, and keys that grant access directly or indirectly in your workload. Protect credentials with appropriate mechanisms to help reduce the risk of accidental or malicious use.
**Best practices:**
- Define requirements for identity and access management
- Secure AWS account root user
- Enforce use of multi-factor authentication
- Automate enforcement of access controls
- Integrate with centralized federation provider
- Enforce password requirements
- Rotate credentials regularly
- Audit credentials periodically

Each pillar includes a set of design principles and best practice areas. Each best practice area aligns to questions a reviewer should ask when designing an architecture. The questions for each pillar are part of the Well-Architected Framework Appendix

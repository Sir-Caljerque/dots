* You can bring the same security models that you use today in your environment over to the cloud

# **Controllability**
* Can I effectively manage users?
* How can i provide temp credentials
* Can I use my own keys?
* 
## IAM
* AWS Identity Access Management service
	* helps you securely control access to AWS resources for your users.
	* use to control who `(authentication)` and in what ways `(authorization)` can use your AWS resources and what resources they can use
	* can define granular permissions for entities
## AWS Security Token Service (AWS STS)
* create and provide trusted users with temporary security credentials that can control access to your AWS resources
* work almost identically to the long - term access key credentials that your IAM users can use.
## AWS CloudHSM
* can protect your encryption keys within hardware security modules (HSMs) that are designed and validated to government standards for secure key management
* generate, store and manage cryptographic keys used for data encryption
# **Auditability**
* Who has access to this resource?
* Who performed what action?
* When was the action performed and from where?
* Where is the evidence?
## AWS CloudTrail
* can help you answer questions such as what actions did a specific user take over a given time period
* For a specific resource, which user has taken actions on it over a given time period?
* What is the source IP address of a specific activity?
# **Visibility**
* What is in my environment?
* What impact did a particular action have?
* What has changed?
* Where is the evidence?
The first step to secure your assets is to know what they are. You shouldn't need to guess what your IT inventory consists of, who is accessing your resources, and what actions anyone has run on your resources
## AWS config
* by using AWS Config, you can discover existing AWS resources, export a complete inventory of your AWS resources with all configuration details, and determine how a resource was configured at any point in time.
# AWS Elastic beanstalk

- An easy way to get web applications up and running
- A managed service that automatically handles –
    - Infrastructure provisioning and configuration
    - Deployment
    - Load balancing
    - Automatic scaling
    - Health monitoring
    - Analysis and debugging
    - Logging
- No additional charge for Elastic Beanstalk
    - Pay only for the underlying resources that are used

AWS Elastic Beanstalk is another AWS compute service option. It is a platform as a service (or PaaS) that facilitates the quick deployment, scaling, and management of your web applications and services.

You remain in control. The entire platform is already built, and you only need to upload your code. Choose your instance type, your database, set and adjust automatic scaling, update your application, access the server log files, and enable HTTPS on the load balancer. 

You upload your code and Elastic Beanstalk automatically handles the deployment, from capacity provisioning and load balancing to automatic scaling and monitoring application health. At the same time, you retain full control over the AWS resources that power your application, and you can access the underlying resources at any time.

There is no additional charge for AWS Elastic Beanstalk. You pay for the AWS resources (for example, EC2 instances or S3 buckets) you create to store and run your application. You only pay for what you use, as you use it. There are no minimum fees and no upfront commitments.

# AWS Elastic Beanstalk deployments

- it supports web applications written for common platforms
    - java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker
- You upload your code   
    - Elastic Beanstalk automatically handles the deployment
    - Deploys on servers such as Apache, NGINX, Passenger, Puma, and Microsoft Inthernet Information Services (IIS)

![[Pasted image 20240820160646.png]]

AWS Elastic Beanstalk enables you to deploy your code through the AWS Management Console, the AWS Command Line Interface (AWS CLI), Visual Studio, and Eclipse. It provides all the application services that you need for your application. The only thing you must create is your code. Elastic Beanstalk is designed to make deploying your application a quick and easy process. 

Elastic Beanstalk supports a broad range of platforms. Supported platforms include Docker, Go, Java, .NET, Node.js, PHP, Python, and Ruby. 

AWS Elastic Beanstalk deploys your code on **Apache Tomcat** for Java applications; **Apache HTTP Server** for PHP and Python applications; NGINX or Apache HTTP Server for Node.js applications; **Passenger**or **Puma**for Ruby applications; and **Microsoft Internet Information Services (IIS)** for .NET applications, Java SE, Docker, and Go.

# Benefits of Elastic Beanstalk

 Fast and simple to start using
 Developer productivity
󰇬 Difficult to outgrow
 Complete resource control

Elastic Beanstalk is **fast and simple to start using**. Use the AWS Management Console, a Git repository, or an integrated development environment (IDE) such as Eclipse or Visual Studio to upload your application. Elastic Beanstalk automatically handles the deployment details of capacity provisioning, load balancing, automatic scaling, and monitoring application health. 

You can improve your **developer productivity** by focusing on writing code instead of managing and configuring servers, databases, load balancers, firewalls, and networks. AWS updates the underlying platform that runs your application with patches and updates. 

Elastic Beanstalk is **difficult to outgrow**. With Elastic Beanstalk, your application can handle peaks in workload or traffic while minimizing your costs. It automatically scales your application up or down based on your application's specific needs by using easily adjustable automatic scaling settings. You can use CPU utilization metrics to trigger automatic scaling actions.

You have the **freedom to select the AWS resources**—such as Amazon EC2 instance type—that are optimal for your application. Elastic Beanstalk enables you to retain full control over the AWS resources that power your application. If you decide that you want to take over some (or all) of the elements of your infrastructure, you can do so seamlessly by using the management capabilities that are provided by Elastic Beanstalk.

# Key takeaways

- Elastic Beanstalk enhances developer productivity
    - simplifies the process of deploying your application
    - Reduces management complexity
- Elastic Beanstalk supports ***Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker***  
- There is no charge for Elastic Beanstalk. Pay only for the AWS resources that you use

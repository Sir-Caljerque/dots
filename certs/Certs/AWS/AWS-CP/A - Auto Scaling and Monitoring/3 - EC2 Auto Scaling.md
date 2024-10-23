When you run your applications of AWS, you want to ensure that your architecture can scale to handle changes in demand. In this section, you will learn how to automatically scale your EC2 instances with Amazon EC2 Auto Scaling

# Why is scaling important

![[Pasted image 20240827221011.png]]

Scaling is the ability to increase or decrease the compute capacity of your application. To understand why scaling is important, consider this example of a workload that has varying resource requirements. In this example, the most resource capacity is required on Wednesday, and the least resource capacity is required on Sunday. 

One option is to allocate more than enough capacity so youcan always meet your highest demand—in this case, Wednesday. However, this situation means that you are running resources that will be underutilized most days of the week. With this option, your costs are not optimized.

Another option is to allocate less capacity to reduce costs. This situation means that you are under capacity on certain days. If you don't solve your capacity problem, your application could underperform or potentially even become unavailable for users.

# EC2 Auto Scaling

- Helps you maintain application availability
- Enables you to automatically add or remove EC2 instances according to conditions that you define
- Detects impaired EC2 instances and unhealthy applications, and replaces the instances without your intervention
- Provides several scaling options –Manual, scheduled, dynamic or on-demand, and predictive

![[Pasted image 20240827221204.png]]

In the cloud, because computing power is a programmatic resource,you can take a flexible approach to scaling. Amazon EC2 Auto Scaling is an AWS service that helps you maintain application availability and enables you to automatically add or remove EC2 instances according to conditions you define. You can use the fleet management features of EC2 Auto Scaling to maintain the health and availability of your fleet. 

Amazon EC2 Auto Scaling provides several ways to adjust scaling to best meet the needs of your applications. You can add or remove EC2 instances manually, on a schedule, in response to changing demand, or in combination with AWS Auto Scaling for predictive scaling. Dynamic scaling and predictive scaling can be used together to scale faster.

To learn more about Amazon EC2 Auto Scaling, see the Amazon EC2 Auto Scaling product page at https://aws.amazon.com/ec2/autoscaling.

# Typical weekly traffic at Amazon.com

![[Pasted image 20240827221316.png]]

Automatic scaling is useful for predictable workloads—for example, the weekly traffic at the retail company Amazon.com.

# November traffic to Amazon.com

![[Pasted image 20240827222256.png]]

Automatic scaling is also useful for dynamic on-demand scaling. Amazon.com experiences a seasonal peak in traffic in November (on Black Friday and Cyber Monday, which are days at the end of November when US retailers hold major sales). If Amazon provisions a fixed capacity to accommodate the highest use, 76 percent of the resources are idle for most of the year. Capacity scaling is necessary to support the fluctuating demands for service. Without scaling, the servers could crash due to saturation, and the business would lose customer confidence.

# Auto scaling groups

![[Pasted image 20240827222405.png]]
> [!NOTE]
> An Auto Scaling group is a collection of EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management.

An Auto Scaling group is a collection of Amazon EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management. The size of an Auto Scaling group depends on the number of instances you set as the desired capacity. You can adjust its size to meet demand, either manually or by using automatic scaling. See more about Auto Scaling Groups at https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-groups.html.

You can specify the minimum number of instances in each Auto Scaling group, and Amazon EC2 Auto Scaling is designed to prevent your group from going below this size. You can specify the maximum number of instances in each Auto Scaling group, and Amazon EC2 Auto Scaling is designed to prevent your group from going above this size. If you specify the desired capacity, either when you create the group or at any time afterwards, Amazon EC2 Auto Scaling is designed to adjust the size of your group so it has the specified number of instances. If you specify scaling policies, then Amazon EC2 Auto Scaling can launch or terminate instances as demand on your application increases or decreases. 

For example, this Auto Scaling group has a minimum size of one instance, a desired capacity of two instances, and a maximum size of four instances. The scaling policies that you define adjust the number of instances within your minimum and maximum number of instances, based on the criteria that you specify.

# Scaling out versus scaling in

![[Pasted image 20240827222541.png]]

With Amazon EC2 Auto Scaling, launching instances is referred to as *scaling out*, and terminating instances is referred to as *scaling in*.

# How Amazon EC2 Auto Scaling works

![[Pasted image 20240827222753.png]]

To launch EC2 instances, an Auto Scaling group uses a launch configuration, which is an instance configuration template. You can think of a launch configuration as whatyou are scaling. When you create a launch configuration, you specify information for the instances. The information you specify includes the ID of the Amazon Machine Image (AMI), the instance type, AWS Identity and Access Management (IAM) role, additional storage, one or more security groups, and any Amazon Elastic Block Store (Amazon EBS) volumes. See more information on the launch configuration at https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html.

You define the minimum and maximum number of instances and desired capacity of your Auto Scaling group. Then, you launch it into a subnet within a VPC (you can think of this as where you are scaling). Amazon EC2 Auto Scaling integrates with Elastic Load Balancing to enable you to attach one or more load balancers to an existing Auto Scaling group. After you attach the load balancer, it automatically registers the instances in the group and distributes incoming traffic across the instances. 

Finally, you specify *when* you want the scaling event to occur. You have many scaling options:
- Maintain current instance levels at all times – You can configure your Auto Scaling group to maintain a specified number of running instances at all times. To maintain the current instance levels, Amazon EC2 Auto Scaling performs a periodic health check on running instances in an Auto Scaling group. When Amazon EC2 Auto Scaling finds an unhealthy instance, it terminates that instance and launches a new one.
- Manual scaling – With manual scaling, you specify only the change in the maximum, minimum, or desired capacity of your Auto Scaling group. See more on manual scaling at https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html.
- Scheduled scaling – With scheduled scaling, scaling actions are performed automatically as a function of date and time. This is useful for predictable workloads when you know exactly when to increase or decrease the number of instances in your group. For example, say that every week,the traffic to your web application starts to increase on Wednesday, remains high on Thursday, and starts to decrease on Friday. See more on scheduled scaling at https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scheduled-scaling.html. You can plan your scaling actions based on the predictable traffic patterns of your web application. To implement scheduled scaling, you create a scheduled action. 
- –A more advanced way to scale your resources enables you to define parameters that control the scaling process. For example, you have a web application that currently runs on two instances and you want the CPU utilization of the Auto Scaling group to stay close to 50 percent when the load on the application changes. This option is useful for scaling in response to changing conditions, when you don't know when those conditions will change. Dynamic scaling gives you extra capacity to handle traffic spikes without maintaining an excessive amount of idle resources. You can configure your Auto Scaling group to scale automatically to meet this need.  More on dynamic scaling at https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html. The scaling policy type determines how the scaling action is performed. You can use Amazon EC2 Auto Scaling with Amazon CloudWatch to trigger the scaling policy in response to an alarm.  See policy types at https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html#as-scaling-types.
- *<u>Predictive scaling</u>* – You can use Amazon EC2 Auto Scaling with AWS Auto Scaling to implement predictive scaling, where your capacity scales based on predicted demand. Predictive scaling uses data that is collected from your actual EC2 usage, and the data is further informed by billions of data points that are drawn from our own observations. AWS then uses well-trained machine learning models to predict your expected traffic (and EC2 usage), including daily and weekly patterns. The model needs at least 1 day of historical data to start making predictions. It is re-evaluated every 24 hours to create a forecast for the next 48 hours. The prediction process produces a scaling plan that can drive one or more groups of automatically scaled EC2 instances. See more on predictive scaling at https://aws.amazon.com/blogs/aws/new-predictive-scaling-for-ec2-powered-by-machine-learning/. 

To learn more about these options, see Scaling the Size of Your Auto Scaling Group in the AWS Documentation at https://docs.aws.amazon.com/autoscaling/ec2/userguide/scale-your-group.html.

# Implementing dynamic scaling

![[Pasted image 20240827223342.png]]

One common configuration for implementing dynamic scaling is to create a CloudWatch alarm that is based on performance information from your EC2 instances or load balancer. When a performance threshold is breached, a CloudWatch alarm triggers an automatic scaling event that either scales out or scales in EC2 instances in the Auto Scaling group. 

To understand how it works, consider this example:
- You create an Amazon CloudWatch alarm to monitor CPU utilization across your fleet of EC2 instances and run automatic scaling policies if the average CPU utilization across the fleet goes above 60 percent for 5 minutes.
- Amazon EC2 Auto Scaling instantiates a new EC2 instance into your Auto Scaling group based on the launch configuration that you create. 
- After the new instance is added, Amazon EC2 Auto Scaling makes a call to Elastic Load Balancing to register the new EC2 instance in that Auto Scaling group. 
- Elastic Load Balancing then performs the required health checks and starts distributing traffic to that instance.Elastic Load Balancing routes traffic between EC2 instances and feeds metrics to Amazon CloudWatch. 

Amazon CloudWatch, Amazon EC2 Auto Scaling, and Elastic Load Balancing work well individually. Together, however, they become more powerful and increase the control and flexibility over how your application handles customer demand.

# AWS Auto Scaling

- Monitors your applications and automatically adjusts capacity to maintain steady, predictable performance at the lowest possible cost
- Provides a simple, powerful user interface that enables you to build scaling plans for resources, including 
    - Amazon EC2 instances and Spot Fleets
    - Amazon Elastic Container Service (Amazon ECS) Tasks 
    - Amazon DynamoDB tables and indexes
    - Amazon Aurora Replicas

So far, you learned about scaling EC2 instances with Amazon EC2 Auto Scaling. You also learned that you can use Amazon EC2 Auto Scaling with AWS Auto Scaling to perform predictive scaling.

AWS Auto Scaling is a separate service that monitors your applications.It automatically adjusts capacity to maintain steady, predictable performance at the lowest possible cost. The service provides a simple, powerful user interface that enables you to build scaling plans for resources, including:
- Amazon EC2 instances and Spot Fleets
- Amazon Elastic Container Service (Amazon ECS) tasks
- Amazon DynamoDB tables and indexes
- Amazon Aurora Replicas

If you are already using Amazon EC2 Auto Scaling to dynamically scale your EC2 instances, you can now use it with AWS Auto Scaling to scale additional resources for other AWS services.

To learn more information about AWS Auto Scaling, see AWS Auto Scaling at https://aws.amazon.com/autoscaling/.

# Key takeaways

Some key takeaways from this section of the module include:
- Scaling enables you to respond quickly to changes in resource needs.
- Amazon EC2 Auto Scaling helps you maintain application availability,and enables you to automatically add or remove EC2 instances according to your workloads.
- An Auto Scaling group is a collection of EC2 instances.
- A launch configuration is an instance configuration template.
- You can implement dynamic scaling with Amazon EC2 Auto Scaling, Amazon CloudWatch, and Elastic Load Balancing.

AWS Auto Scaling is a separate service that monitors your applications, and it automatically adjusts capacity for the followingresources:
- Amazon EC2 instances and Spot Fleets
- Amazon ECS tasks
- Amazon DynamoDB tables and indexes
- Amazon Aurora Replicas

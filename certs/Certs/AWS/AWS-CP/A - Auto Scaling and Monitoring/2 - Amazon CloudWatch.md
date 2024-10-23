# Monitoring AWS resources

To use AWS efficiently, you need insight into your AWS resources:
- How do you know when you should *launch more EC3 instances?* 
- Is your *application's performance or availability* being affected by a lack of sufficient capacity?
- How much of your infrastructure is actually **being used**?

How do you capture this information?

# Amazon CloudWatch
![[Pasted image 20240827215935.png]]

- Monitors
    - AWS resources
    - Applicationsthat run on AWS
- Collects and tracks
    - Standard metrics
    - Custom metrics
- Alarms
    - Send notificationsto an Amazon SNS topic
    - Perform Amazon EC2 Auto Scaling or Amazon EC2 actions
- Events
    - Define rules to match changes in AWS environment and route these events to one or more target functions or streams for processing

You can capture this information with Amazon CloudWatch.

Amazon CloudWatch is a monitoring and observability service that is built for DevOps engineers, developers, site reliability engineers (SRE), and IT managers. CloudWatch monitors your AWS resources (and the applications that you run on AWS) in real time. You can use CloudWatch to collect and track metrics, which are variables that you can measure for your resources and applications. 

You can create an alarm to monitor any Amazon CloudWatch metric in your account and use the alarm to automatically send a notification to an Amazon Simple Notification Service (Amazon SNS) topic or perform an Amazon EC2 Auto Scaling or Amazon EC2 action. For example, you can create alarms on the CPU utilization of an EC2 instance, Elastic Load Balancing request latency, Amazon DynamoDB table throughput, Amazon Simple Queue Service (Amazon SQS) queue length, or even the charges on your AWS bill. You can also create an alarm on custom metrics that are specific to your custom applications or infrastructure.

You can also use Amazon CloudWatch Events to define rules that match incoming events (or changes in your AWS environment) and route them to targets for processing. Targets can include Amazon EC2 instances, AWS Lambda functions, Kinesis streams, Amazon ECS tasks, Step Functions state machines, Amazon SNS topics, Amazon SQS queues, and built-in targets. CloudWatch Events becomes aware of operational changes as they occur. CloudWatch Events responds to these operational changes and takes corrective action as necessary, by sending messages to respond to the environment, activating functions, making changes, and capturing state information.

With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health. There is no upfront commitment or minimum fee; you simply pay for what you use. You are charged at the end of the month for what you use.

# CloudWatch alarms

- Create alarms based on
    - Static threshold
    - Anomaly detection
    - Metric math expression
- Specify
    - Namespace
    - Metric
    - Statistic
    - Period
    - Conditions
    - Additional configuration
    - Actions

![[Pasted image 20240827220355.png]]

You can create a CloudWatch alarm that watches a single CloudWatch metric or the result of a math expression based on CloudWatch metrics. You can create a CloudWatch alarm based on a static threshold, anomaly detection, or a metric math expression.

When you create an alarm based on a static threshold, you choose a CloudWatch metric for the alarm to watch and the threshold for that metric. The alarm goes to ALARM state when the metric breaches the threshold for a specified number of evaluation periods. 

For an alarm based on a static threshold, you must specify the:
- *Namespace* – A namespace contains the CloudWatch metric that you want, for example, AWS/EC2.
- *Metric* – A metric is the variable you want to measure, for example, CPU Utilization.
- *Statistic* – A statistic can be an average, sum, minimum, maximum, sample count, a predefined percentile, or a custom percentile.
- *Period* – A period is the evaluation period for the alarm. When the alarm is evaluated, each period is aggregated into one data point.
- *Conditions* – When you specify the conditions for a static threshold, you specify whenever the metric is Greater, Greater or Equal, Lower or Equal, or Lower than the threshold value, and you also specify the threshold value.
- *Additional configuration information* – This includes the number of data points within the evaluation period that must be breached to trigger the alarm, and how CloudWatch should treat missing data when it evaluates the alarm.
- *Actions* – You can choose to send a notification to an Amazon SNS topic, or to perform an Amazon EC2 Auto Scaling action or Amazon EC2 action.

For more information on creating CloudWatch alarms, see the topics under Using Alarms in the AWS Documentation at https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html.

# Key takeaways
Some key takeaways from this section of the module include:
- Amazon CloudWatch helps you monitor your AWS resources—and the applications that you run on AWS—in real time.
- CloudWatch enables youto –
    - Collect and track standard and custom metrics.
    - Set alarms to automatically send notifications to SNS topics or perform Amazon EC2 Auto Scaling or Amazon EC2 actions based on the value of the metric or expression relative to a threshold over a number of time periods.
    - Define rules that match changes in your AWS environment and route these events to targets for processing.
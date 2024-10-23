![[Pasted image 20240417142425.png]]
-- Diagram of traffic from user going to an app load balancer. Traffic is then split between 2 EC2 instalnces --

The Elastic Load Balancing (ELB) service automatically distributes incoming application traffic across multiple targets, such as EC2 instances, containers, and IP addresses. You configure your load balancer to accept incoming traffic by specifying one or more listeners. A listener is a process that checks for connection requests.

ELB scales your load-balancing device as traffic to your application changes over time, and can scale to the vast majority of workloads automatically. This increases the availability and fault tolerance of your applications. You can add and remove instances from your load balancer as your needs change, without disrupting the overall flow of requests to your application. ELB can handle the varying load of your application traffic in a single Availability Zone or across multiple Availability Zones.

You can also configure health checks, which monitor the health of registered targets. With health checks in place, the load-balancing device can send requests to only healthy targets. When the load balancer detects an unhealthy target, it stops routing traffic to that target. The load balancer resumes routing traffic to that target after detecting that the target is healthy again.

ELB is integrated with other popular AWS services such as Amazon EC2 Auto Scaling, Amazon Elastic Container Service (Amazon ECS), AWS CloudFormation, and AWS Certificate Manager (ACM).

ELB supports three types of load balancers: Application, Network, and Classic Load Balancers.

An Application Load Balancer operates at the request level, and routes traffic to targets (EC2 instances, containers, IP addresses, and AWS Lambda functions) based on the content of the request. An Application Load Balancer is ideal for advanced load balancing of HTTP and HTTPS traffic. This type of load balancer provides advanced request routing targeted at delivery of modern application architectures, including microservices and container-based applications. An Application Load Balancer simplifies and improves the security of your application, by ensuring that the latest SSL and TLS ciphers and protocols are used at all times.

A Network Load Balancer operates at the connection level, and routes connections to targets (EC2 instances, microservices, and containers) within a VPC, based on IP protocol data. A Network Load Balancer is ideal for load balancing both TCP and UDP traffic. This type of load balancer is capable of handling millions of requests per second while maintaining ultra-low latencies. A Network Load Balancer is optimized to handle sudden and volatile traffic patterns while using a single static IP address per Availability Zone.

A *Classic Load Balancer* provides basic load balancing across multiple EC2 instances, and operates at both the request level and connection level. A Classic Load Balancer is intended for apps tat are built within the EC2-Classic netwk.

For more information, see What Is Elastic Load Balancing? in the ELB User Guide at
https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html.
- With VPC Flow Logs, you can capture information about inbound and outbound IP traffic from the following:
    - VPC
    - Subnets
    - Individual network interfaces
- Publish flow log data to CloudWatch or Amazon S3
- Flow log data is collected outside of the path of your network traffic with no impact on throughput on latency

VPC Flow Logs is a built-in feature of Amazon VPC. Flow logs capture information about inbound and outbound IP traffic from your VPC network interfaces. Flow logs can be captured at the VPC level, the subnet level, or for each individual network interface. You can publish flow log data to the Amazon CloudWatch Logs service or Amazon S3. Flow logs are helpful to troubleshoot, monitor, and analyze the flow of IP traffic within your VPC. Because flow log data is collected outside of the path of your network traffic, there is no impact on throughput, latency, or overall performance.

For more information, see Logging IP Traffic with VPC Flow Logs in the Amazon VPC User Guide at
https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html.

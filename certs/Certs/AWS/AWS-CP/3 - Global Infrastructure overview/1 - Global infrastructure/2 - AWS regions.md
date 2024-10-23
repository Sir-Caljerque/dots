- An AWSRegionis a geographical area.
    - Data replication across Regions is controlled by you.
    - Communication between Regions uses AWS backbone network infrastructure.
- Each Region provides full redundancy and connectivity to the network.
- A Region typically consists of two or more Availability Zones.

The AWS Cloud infrastructure is built around Regions. AWS has 22 Regions worldwide. An **AWS Region**is a physical geographical location with one or more **Availability Zones**. Availability Zones in turn consist of one or more **data centers**.

To achieve fault tolerance and stability, Regions are isolated from one another. Resources in one Region are not automatically replicated to other Regions. When you store data in a specific Region, it is not replicated outside that Region. 

It is your responsibility to replicate data across Regions, if your business needs require it. 

AWS Regions that were introduced before March 20, 2019 are enabled by default. Regions that were introduced after March 20, 2019—such as Asia Pacific (Hong Kong) and Middle East (Bahrain)—are disabled by default. You must enable these Regions before you can use them. You can use the AWS Management Console to enable or disable a Region.

Some Regions have restricted access. An Amazon AWS (**China**) account provides access to the Beijing and Ningxia Regions only. To learn more about AWS in China, see: https://www.amazonaws.cn/en/about-aws/china/. The isolated **AWS GovCloud (US)** Region is designed to allow US government agencies and customers to move sensitive workloads into the cloud by addressing their specific regulatory and compliance requirements.

> [!NOTE]
> Snapshot from the infrastructure.awswebsite that shows a picture of downtown London including the Tower Bridge and the Shard. It notes that there are three Availability Zones in the London region. 

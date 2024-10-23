- Each Regionhas multiple Availability Zones.
- Each Availability Zoneis a fully isolated partition of the AWS infrastructure.
    - Availability Zones consist of discrete **data centers**
    - They are designed for fault isolation
    - They are interconnected with other Availability Zones by using high-speed private networking
    - You choose your Availability Zones.
    - **AWS recommends replicating data and resources across Availability Zones** for resiliency.

Each AWS Region has multiple, isolated locations that are known asAvailability Zones.

Each Availability Zone provides the ability to operate applications and databases that are more highly available, fault-tolerant, and scalable than would be possible with a single data center. Each Availability Zone can include multiple data centers (typically three), and at full-scale, they can include hundreds of thousands of servers. They are fully isolated partitions of the AWS Global Infrastructure. Availability Zones have their own power infrastructure, and they are physically separated by many kilometers from other Availability Zones—though all Availability Zones are within 100 km of each other.

All Availability Zones are interconnected with high-bandwidth, low-latency networking over fully redundant, dedicated fiber that provides high-throughput between Availability Zones. The network accomplishes synchronous replication between Availability Zones.

Availability Zones help build highly available applications. When an application is partitioned across Availability Zones, companies are better isolated and protected from issues such as lightning, tornadoes, earthquakes, and more.

You are responsible for selecting the Availability Zones where your systems will reside. Systems can span multiple Availability Zones. AWS recommends replicating across Availability Zones for resiliency. You should design your systems to survive the temporary or prolonged failure of an Availability Zone if a disaster occurs

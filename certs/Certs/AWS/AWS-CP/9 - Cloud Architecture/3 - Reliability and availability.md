"Everything fails, all the time"

In the words of Werner Vogels, Amazon’s CTO, “Everything fails, all the time.” One of the best practices that is identified in the AWS Well-Architected Framework is to plan for failure (or application or workload downtime). One way to do that is to architect your applications and workloads to withstand failure. There are two important factors that cloud architects consider when designing architectures to withstand failure: reliability and availability.

# Reliability

- A measure of your system’s ability to provide functionality when desired by the user.
- System includes all system components: hardware, firmware, and software.
- Probability that your entire system will function as intended for a specified period.
- Mean time between failures (MTBF) = total time in service/number of failures

![[Pasted image 20240826213140.png]]

_Reliability_ is a measure of your system’s ability to provide functionality when desired by the user. Because "everything fails, all the time," you should think of reliability in statistical terms. Reliability is the probability that an entire system will function as intended for a specified period. Note that a system includes all system components, such as hardware, firmware, and software. Failure of system components impacts the availability of the system.

To understand reliability, it is helpful to consider the familiar example of a car. The car is the system. Each of the car’s components (for example, cooling, ignition, and brakes) must work together in order for the car to work properly. If you try to start the car and the ignition fails, you cannot drive anywhere—the car is not available. If the ignition fails repeatedly, your car is not considered reliable.

A common way to measure reliability is to use statistical measurements, such as Mean Time Between Failures (MTBF). MTBF is the total time in service over the number of failures.

# Understanding reliability metrics

![[Pasted image 20240826213236.png]]

Say that you have an application that you bring online Monday at noon. The application is said to be available. It functions normally until it fails Friday at noon. Therefore, the time to failure (or the length of time the application is available) is 96 hours. You spend from Friday at noon until Monday at noon diagnosing why the application failed and repairing it, at which point you bring the application back online. Therefore, the time to repair is 72 hours.

Then, it happens again: the application fails on Friday at noon, you spend from Friday at noon until Monday at noon repairing it, and you bring it online on Monday at noon.

Say this failure-repair-restore cycle happens **every week**. You can now calculate the average of these numbers. In this example, your mean time to failure (MTTF) is 96 hours, and your mean time to repair (MTTR) is 72 hours. Your mean time between failures (MTBF) is 168 hours (or 1 week), which is the sum of MTTF and MTTR.

# Availability

- Normal operation time / total time
- A percentage of uptime (for example 99.9 percent) over time (for example, 1 year)
- Number of 9s - Five 9s means 99.999 percent availability

As you just learned, failure of system components impacts the availability of the system.

Formally, _availability_ is the percentage of time that a system is operating normally or correctly performing the operations expected of it (or normal operation time over total time). Availability is reduced anytime the application isn’t operating normally, including both scheduled and unscheduled interruptions.

Availability is also defined as the percentage of uptime (that is, length of time that a system is online between failures) over a period of time (commonly 1 year).

A common shorthand when referring to availability is number of 9s. For example, five 9s means 99.999 percent availability.

# High availability

- System can withstand some measure of degradation while still remaining available.
- Downtime is minimized.
- Minimal human intervention is required.

A _highly available_ system is one that can withstand some measure of degradation while still remaining available. In a highly available system, downtime is minimized as much as possible and minimal human intervention is required.

A highly available system can be viewed as a set of system-wide, shared resources that cooperate to guarantee essential services. High availability combines software with open-standard hardware to minimize downtime by quickly restoring essential services when a system, component, or application fails. Services are restored rapidly, often in less than 1 minute.

# Availability tiers

| Availability | Max Disruption (per year) | Application category                                       |
| ------------ | ------------------------- | ---------------------------------------------------------- |
| 99%          | 3 days 15 hours           | Batch processing, data extraction, transfer, and load jobs |
| 99.9%        | 8 hours 45 minutes        | Internal tools like knowledge management, project tracking |
| 99.95%       | 4 hours 45 minutes        | Online commerce, point of sale                             |
| 99.99%       | 52 minutes                | Video delivery, broadcast system                           |
| 99.999%      | 5 minutes                 | ATM transactions, telecommunications systems               |

Availability requirements vary. The length of disruption that is acceptable depends on the type of application. Here is a table of common application availability design goals and the maximum length of disruption that can occur within a year while still meeting the goal. The table contains examples of the types of applications that are common at each availability tier.

> [!NOTE]
> Availability tiers with max disruption per year and application categories. The tiers range from availabilities of 99 percent to 99.999 percent. 

# Factors that influence availability

Though events that might disrupt an application’s availability cannot always be predicted, you can build availability into your architecture design. There are three factors that determine the overall availability of your application:
- *Fault tolerance* refers to the **built-in redundancy** of an application's components and the ability of the **application to remain operational** even if some of its components fail. Fault tolerance relies on specialized hardware to detect failure in a system component (such as a processor, memory board, power supply, I/O subsystem, or storage subsystem) and instantaneously switch to a redundant hardware component. The fault-tolerant model does not address software failures, which are the most common reason for downtime. 
- *Scalability* is the ability of your application to accommodate increases in capacity needs, remain available, and perform within your required standards. It does not guarantee availability, but it contributes to your application's availability.
- *Recoverability* is the ability to restore service quickly and without lost data if a disaster makes your components unavailable, or it destroys data.

Keep in mind that improving availability usually leads to increased cost. When you consider how to make your environment more available, it's important to balance the cost of the improvement with the benefit to your users. 

Do you want to ensure that your application is always alive or reachable, or do you want to ensure that it is servicing requests within an acceptable level of performance?

# Key takeaways

- *Reliability*is a measure of your system’s ability to provide functionality when desired by the user, and it can be measured in terms of MTBF. 
- *Availability*is the percentage of time that a system is operating normally or correctly performing the operations expected of it (or normal operation time over total time).
- Three factors that influence the availability of your applications are *fault tolerance*, *scalability*, and *recoverability*.
- You can design your workloads and applications to be *highly available*, but there is a cost tradeoff to consider.

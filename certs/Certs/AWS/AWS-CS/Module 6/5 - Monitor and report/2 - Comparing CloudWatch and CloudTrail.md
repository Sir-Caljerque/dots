| **CloudTrail**                                                          | **CloudWatch**                                                                            |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| Continuously monitors and logs user activities                          | Continuously monitors resource and application performance                                |
| Useful for compliance auditing, security analysis, and troubleshooting  | Useful for detecting anomalous service behavior, setting alarms, and discovering insights |
| Helps determine WHO performed WHAT unauth'd action and WHEN they did it | Alerts that an issue has occured due to an unauth'd action                                |

When uised together, you can create custom CloudWatch dachboards, alarms, and notifications for key metrics and specific CloudTrail events

The AWS CloudTrail service provides the ability to continuously monitor and log the activity of users, groups, and roles within your AWS environment. These log files are useful for compliance auditing, security analysis, and troubleshooting. Assume that an EC2 instance was deleted without permission. CloudTrail could provide a log that gives you the identity of the user, group, or role that performed the unauthorized action.

Amazon CloudWatch provides the ability to continuously monitor the performance of your AWS resources and applications. CloudWatch can help detect and notify you of anomalous service behavior, such as an EC2 instance deletion. Whether coupled with CloudTrail or on its own, CloudWatch provides you with increased oversight of your AWS environment.

When used together, you can create custom CloudWatch alarms and notifications for specific CloudTrail events. This helps you to respond quickly to key operational issues.

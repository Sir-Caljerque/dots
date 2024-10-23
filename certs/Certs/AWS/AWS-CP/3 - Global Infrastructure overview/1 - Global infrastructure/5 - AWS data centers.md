- AWS data centers are **designed for security**.
- Data centers are where the data resides and data processing occurs.
- Each data center has redundant power, networking, and connectivity, and is housed in a separate facility.
- A data center typically has 50,000 to 80,000 physical servers.

The foundation for the AWS infrastructure is the data centers. Customers do not specify a data center for the deployment of resources. Instead, an Availability Zone is the most granular level of specification that a customer can make. However, a data center is the location where the actual data resides. Amazon operates state-of-the-art, highly available data centers. Although rare, failures can occur that affect the availability of instances in the same location. If you host all your instances in a single location that is affected by such a failure, none of your instances will be available.

Data centers are securely designed with several factors in mind:

Each location is carefully evaluated to **mitigate environmental risk.** 
- Data centers have a **redundant design** that anticipates and tolerates failure while maintaining service levels. 
- To ensure availability, **critical system components are backed up** across multiple Availability Zones. 
- To ensure capacity, AWS continuously monitors service usage to deploy infrastructure to support availability commitments and requirements. 
- Data center **locations are not disclosed** and all access to them is restricted.
- In case of failure, automated processes move data traffic away from the affected area. 

AWS uses **custom network equipment** sourced from **multiple original device manufacturers** **(ODMs).**ODMs design and manufacture products based on specifications from a second company. The second company then rebrands the products for sale.

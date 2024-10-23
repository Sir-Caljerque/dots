- AWS provides a global network of **Points of Presence** locations 
- Consists of **edge locations** and a much smaller number of **Regional edge caches**
- Used with Amazon CloudFront 
    - A global Content Delivery Network (CDN), that delivers content to end users with**reduced latency**
- Regional edge caches used for content with infrequent access.

**Amazon CloudFront** is **a content delivery network (CDN)** used to distribute content to end users to reduce latency. **Amazon Route 53** is a Domain Name System (DNS) service. Requests going to either one of these services will be routed to the nearest **edge location** automatically in order to lower latency.

**AWS Points of Presence** are located in most of the major cities around the world. By **continuously measuring internet connectivity, performance and computing to find the best** **way to route requests,**the Points of Presence deliver a better near real-time user experience. They are used by many AWS services, including Amazon CloudFront, Amazon Route 53, AWS Shield, and AWS Web Application Firewall (AWS WAF) services. 

**Regional edge caches** are used by default with Amazon CloudFront. Regional edge caches are used when you have content that is not accessed frequently enough to remain in an **edge** **location.** Regional edge caches absorb this content and provide an alternative to that content having to be fetched from the origin server.

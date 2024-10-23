# Content delivery and network latency

![[Pasted image 20240813142630.png]]

As explained earlier in this module when you were learning about AWS Direct Connect, one of the challenges of network communication is network performance. When you browse a website or stream a video, your request is routed through many different networks to reach an origin server. The origin server (or origin) stores the original, definitive versions of the objects (webpages, images, and media files). The number of network hops and the distance that the request must travel significantly affect the performance and responsiveness of the website. Further, network latency is different in various geographic locations. For these reasons, a content delivery network might be the solution.

# Content delivery network

- Is a globally distributed system of caching servers
- Caches copies of commonly requested files (static content)
- Delivers a local copy of the requested content from a nearby cache edge or Point of Presence 
- Accelerates delivery of dynamic content
- Improves application performance and scaling

A content delivery network (CDN) is a globally distributed system of caching servers. A CDN caches copies of commonly requested files (static content, such as Hypertext Markup Language, or HTML; Cascading Style Sheets, or CSS; JavaScript; and image files) that are hosted on the application origin server. The CDN delivers a local copy of the requested content from a cache edge or Point of Presence that provides the fastest delivery to the requester. 

CDNs also deliver dynamic content that is unique to the requester and is not cacheable. Having a CDN deliver dynamic content improves application performance and scaling. The CDN establishes and maintains secure connections closer to the requester. If the CDN is on the same network as the origin, routing back to the origin to retrieve dynamic content is accelerated. In addition, content such as form data, images, and text can be ingested and sent back to the origin, thus taking advantage of the low-latency connections and proxy behavior of the PoP. 

# CloudFront

- Fast, global and secure CDN service
- Global network of edge locations and Regional edge caches
- Self-service model
- Pay-as-you-go pricing

Amazon CloudFront is a fast CDN service that securely delivers data, videos, applications, and application programming interfaces (APIs) to customers globally with low latency and high transfer speeds.It also provides a developer-friendly environment. Amazon CloudFront delivers files to users over a global network of edge locations and Regional edge caches. Amazon CloudFront is different from traditional content delivery solutions because it enables you to quickly obtain the benefits of high-performance content delivery without negotiated contracts, high prices, or minimum fees. Like other AWS services, Amazon CloudFront is a self-service offering with pay-as-you-go pricing.

# CloudFront infrastructure

![[Pasted image 20240813144602.png]]
- Edge locations –Network of data centers that CloudFront uses to serve popular content quickly to customers.
- Regional edge cache – CloudFront location that caches content that is not popular enough to stay at an edge location. It is located between the origin server and the global edge location.

Amazon CloudFront delivers content through a worldwide network of data centers that are called *edge locations*. When a user requests content that you serve with CloudFront, the user is routed to the edge location that provides the lowest latency (or time delay) so that content is delivered with the best possible performance. CloudFront edge locations are designed to serve popular content quickly to your viewers. 

As objects become less popular, individual edge locations might remove those objects to make room for more popular content. For the less popular content, CloudFront has *Regional edge caches.* Regional edge caches are CloudFront locations that are deployed globally and are close to your viewers. They are located between your origin server and the global edge locations that serve content directly to viewers. A Regional edge cache has a larger cache than an individual edge location, so objects remain in the Regional edge cache longer. More of your content remains closer to your viewers, which reduces the need for CloudFront to go back to your origin server and improves overall performance for viewers. 

For more information about how Amazon CloudFront works, see How CloudFront Delivers Content in the AWS Documentation at https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowCloudFrontWorks.html#HowCloudFrontWorksContentDelivery.

# Benefits

Amazon CloudFront provides the following benefits:
- *Fast and global*–Amazon CloudFront is massively scaled and globally distributed. To deliver content to end users with low latency, Amazon CloudFront uses a global network that consists of edge locations and regional caches.
- *Security at the edge*–Amazon CloudFront provides both network-level and application-level protection. Your traffic and applications benefit through various built-in protections, such as AWS Shield Standard, at no additional cost. You can also use configurable features, such as AWS Certificate Manager (ACM), to create and manage custom Secure Sockets Layer (SSL) certificates at no extra cost.
- *Highly programmable*–Amazon CloudFront features can be customized for specific application requirements. It integrates with Lambda@Edgeso that you can run custom code across AWS locations worldwide, which enables you to move complex application logic closer to users to improve responsiveness. The CDN also supports integrations with other tools and automation interfaces for DevOps. It offers continuous integration and continuous delivery (CI/CD) environments.
- *Deeply integrated with AWS*–Amazon CloudFront is integrated with AWS, with both physical locations that are directly connected to the AWS Global Infrastructure and other AWS services. You can use APIs or the AWS Management Console to programmatically configure all features in the CDN.
- *Cost-effective* Amazon CloudFront is cost-effective because it has no minimum commitments and charges you only for what you use. Compared to self-hosting, Amazon CloudFront avoids the expense and complexity of operating a network of cache servers in multiple sites across the internet. It eliminates the need to overprovision capacity to serve potential spikes in traffic. Amazon CloudFront also uses techniques like collapsing simultaneous viewer requests at an edge location for the same file into a single request to your origin server. The result is reduced load on your origin servers and reduced need to scale your origin infrastructure, which can result in further cost savings. If you use AWS origins such as Amazon Simple Storage Service (Amazon S3) or Elastic Load Balancing,you pay only for storage costs, not for any data transferred between these services and CloudFront.

# Pricing
Amazon CloudFront charges are based on actual usage of the service in four areas:
- *Data transfer out*–You are charged for the volume of data that is transferred out from Amazon CloudFront edge locations, measured in GB, to the internet or to your origin (both AWS origins and other origin servers). Data transfer usage is totaled separately for specific geographic regions, and then cost is calculated based on pricing tiers for each area. If you use other AWS services as the origins of your files, you are charged separately for your use of those services, including storage and compute hours. 
- *HTTP(S) requests*–You are charged for the number of HTTP(S) requests that are made to Amazon CloudFront for your content. 
- *Invalidation requests*–You are charged per path in your invalidation request. A path that is listed in your invalidation request represents the URL (or multiple URLs if the path contains a wildcard character) of the object that you want to invalidate from CloudFront cache. You can request up to 1,000 paths each month from Amazon CloudFront at no additional charge. Beyond the first 1,000 paths, you are charged per path that is listed in your invalidation requests.
- *Dedicated IP custom Secure Sockets Layer (SSL)*–You pay $600 per month for each custom SSL certificate that is associated with one or more CloudFront distributions that use the Dedicated IP version of custom SSL certificate support. This monthly fee is prorated by the hour. For example, if your custom SSL certificate was associated with at least one CloudFront distribution for just 24 hours (that is, 1 day) in the month of June, your total charge for using the custom SSL certificate feature in June is (1 day / 30 days) * $600 = $20.For the latest pricing information, see the Amazon CloudFront pricing page at https://aws.amazon.com/cloudfront/pricing/.

# Key takeaways

Some keytakeaways from this section of the module include:
- A CDN is a globally distributed system of caching servers that accelerates delivery of content.
- Amazon CloudFront is a fast CDN service that securely delivers data, videos, applications, and APIs over a global infrastructure with low latency and high transfer speeds.
- Amazon CloudFront offers many benefits, including:
    - Fast and global
    - Security at the edge
    - Highly programmable
    - Deeply integrated with AWS
    - Cost-effective


# 1 Basics
- For the basics, i have 3 definitions here: Networks, subnets, and IP addresses [define]
- [image 1] is a network with 2 subents
- [image 2] is how an IPv4 address and a IPv6 address look like

# 2 CIDR
- I found this topic really cool, so i have a little but to share here
- CIDR stands for Classless Inter-Domain Routing, which is [definition]
- its formatted like this [read rest of ppt]

# 3 example
- heres something to keep in mind: the broadcast address is the last address in the range while the network address is the first
- for the purpose of time and relevance, we can skip over subent mask
- [explain first and third CIDRs]
- ![[Pasted image 20240612183814.png]]
# 5 OSI
- Here we have the OSI model. i wont go into specifics here but the general gist here is that this Model that explains how data travels over a network
- there are 7 layers to it, each having a different finction and protocols

# 6 VPC
- Amazon VPC is a service in which you can basically control all of your subents. you can [read ppt]

# 7 VPC Netw
- an Internet gateway is basically a VPC component that [read]
- a NAT, or [read] its benefits are [read benefits]
- There are also some things that you can attatch to your subnets or VPCs that allow you extra functionality such as [read] and more

# 8 VPC sec
- to protect your VPCs, there are [read]

# 9 pic
- i wont go into detail on this, so here you can see the differences between sec. groups and ACLs. 

# 10 R53
- AWS route 53 is essentially a DNS server that is used for [read]
- Here is the basic pattern that Amazon Route 53 follows when a user initiates a DNS request. The DNS resolver checks with your domain in Route 53, gets the IP address, and returns it to the user.

# 11 pic
- here are the different types of routing that route 53 offers

# 12
- as we discussed before, there can be an issue of speed with network communications . thats where CloudFront comes in
- it works as a CDN, which [read] 
- so usually, when requesting info from a server, your request hops around a lot of servers to finally get to its dentination
- CloudFront caches frequently used files in several edge locations to help you access them faster
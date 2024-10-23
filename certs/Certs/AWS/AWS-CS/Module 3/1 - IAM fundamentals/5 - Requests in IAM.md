A request is made any time a principal attempts to use the console, API, or AWS CLI. The request contains the following info:
- Actions or operations are what the principal wants to perform.
- Resources are the object or objects upon which the actions or operations are performed.
- The principal is the person or application using a user or role to send the request.
- Environment data consists of the IP address, user agent, Secure Sockets Layer (SSL) enabled status, or time of day.
- Resource data is the data related to the resource being requested

AWS gathers all the request information into a request context , which is then used to evaluate and authorize (or prevent) the request.
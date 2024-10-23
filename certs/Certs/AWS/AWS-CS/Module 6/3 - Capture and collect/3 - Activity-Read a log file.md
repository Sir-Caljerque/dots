# **ID of the caller**
```json
{
    "Records": [{
        "eventVersion": "1.0",
        "userIdentity": {
            "type": "IAMUser",
            "principalId": "AIDACKEVSQ6C2EXAMPLE",
            "arn": "arn:aws:iam:111122223333:user/Jane",
            "accountId": "111122223333",
            "accessKeyId": "AKIAIOSFODNN7EXAMPLE",
            "userName": "Jane"
        }
    }]
}
```
This log file was generated when someone or something performed some kind of action.

Take a moment to review this log file snippet, and then answer the following questions individually or as a group:

1. What type of account did the log collect information about?
2. What can you determine from the **arn** element?

# **Time and origin of request** 
```json
"eventTime": "2021-07-06T21:01:59Z",
"eventSource": "ec2.amazonaws.com",
"eventName": "StopInstances",
"awsRegion": "us-east-2",
"sourceIPAdress": "203.00113.176",
"userAgent": "ec2-api-tools 1.6.12.2",
```

Take a moment to review this log file snippet, and then answer the following questions individually or as a 
group:
1. What does the **eventSource** field give you information about?
2. In the **eventName** field, whatdoes the **StopInstances** value indicate?
3. What method was used to perform this action? (Console, AWS CLI, or other)

```json
"requestParameters": {
    "instancesSet": {
        "items": [{
        "instanceId": "i-ebeaf9e2" } ] },
    "responseElements": {
        "instancesSet": {
            "items": [{
                "instanceId": "i-ebeaf9e2",
                "currentState": {
                    "code": 64,
                    "name": "stopping" },
                "previousState": {
                    "code": 16,
                    "name": "running" } } ] }
    }
}
```

Take a moment to review this log file snippet, and then answer the following questions individually or as a 
group:
1. In the instanceIdfield, what does thei-ebeaf9e2 value indicate?
2. What was the action that was performed

If you need to track changes to such resources, answer questions about user activity, demonstrate compliance, troubleshoot, or perform security analysis, you can use CloudTrail to detect threats and provide security

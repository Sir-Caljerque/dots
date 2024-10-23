![[Pasted image 20240417140321.png]]

Here is a summary of the differences between seccurity groups and network ACLs:
- Security groups act at the instance or interface level, nut nACLs act at the subnet level
- Sec. groups support allow rules only, but network ACLs support both allow and deny rules
- Sec. groups are stateful, but network ACLs are stateless
- For sec. groups, all tules are eval'd before the decision is made to allow traffic. For netwk ACLs, rules are eval'd in number order before the decision is made to allow traffic
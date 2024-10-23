![[Pasted image 20240309164508.png]]

Diagram of evaluation logic for IAM policies. Policies are evaluated first for an explicit deny. Ifan explicit deny exists, then access is denied. If no explicit deny exists, the policy is then evaluated for an explicit allow. If an explicit allow exists, access is granted, but if no explicit allow exists, access is denied.

This diagram shows the logic that AWS uses when evaluating IAM policies. AWS evaluates all applicable policies and goes through this evaluation logic:
* By default, all requests are denied.
* An explicit allow overrides the default deny.
* An explicit deny overrides any explicit allow.

The order that the policies are evaluated in has no effect on the outcome of the evaluation. All policies are evaluated, and the result is ​always​ that the request is either allowed or denied. Suppose that a conflict occurs (one policy allows an ​action​ and another policy denies an ​action​). Then the most restrictive policy (that is, the policy that denies the ​action​) is applied.
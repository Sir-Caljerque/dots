- Forensic isolation (if software, reproduce the bug)
- Stage a fix
- Deploy the fix
- incident disclosure
> [!NOTE]
> Automate these processes whenever possible, and run game days in staging (safe) environments to fine-tune your corporate-wide incident respose processes

When an enterprise has identified the failure of a component, a reduction in quality of service, or an exploit in need of remedy, they move into the resolution and recovery phase of incident response.

This second phase consists of the following:
- Forensic isolation: Isolate the incident, and perform a deep dive to discover the issue. Forensics often requires capturing the disk image or as-is configuration of an operating system. The problem might be a bug in the code base. If so, then you need to reproduce the error. Without being able to reproduce the error that the customer experienced, you won't be able to fix it.
- Staging a fix: Reproduce the issue, apply a fix, and test.
- Deploying the fix: Push any new infrastructure, as code, or any new application code to production.
- Incident closure: Resolve the incident.

AWS offers a range of services and products that help companies remediate an incident.

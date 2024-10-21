# Security controls

| <u>Categories</u> |     Preventive     |               Deterrent               |      Detective       |          Corrective           |           Compensating            |                Directive                 |
| :---------------: | :----------------: | :-----------------------------------: | :------------------: | :---------------------------: | :-------------------------------: | :--------------------------------------: |
|  **Technical**:   |      Firewall      |             Splash screen             |     System logs      |        Backup recovery        | Block instead of patch<br>Backups |          File storage policies           |
|  **Managerial**:  | On-boarding policy |               Demotion                | Review login reports | Policies for reporting issues |       Separation of duties        | Compliance policies<br>Security policies |
| **Operational**:  |    Guard shack     |            Reception desk             |   Property patrols   |      Contact authorities      |  Require multiple security staff  |         Security policy training         |
|   **Physical**:   |     Door lock      | Warning signs<br>Security cameras<br> |   Motion detection   |       Fire extinguisher       |          Power generator          |      Authorized Personnel Only sign      |

> <u>Refers to preventing attackers from getting access to unauthorized data</u>

- Technical controls
	- OS controls
	- Firewalls
	- Antivirus
- Managerial controls
	- Policies
- Operational controls
	- Security guards
	- Awareness posters/programs
- Physical controls
	- Fences
	- Locks
	- Guard shack
	- Badge readers

## Security control *types*
- Preventive
	- Block access to a resource
	- "You shall not pass"
- Deterrent
	- Discourage intrusion attempt
	- Doesn't *prevent* access
- Detective
	- Identify and warn/log intrusion attempt
	- Doesn't *prevent* access
- Corrective
	- Apply control *after* an event has been detected
	- Reverse the impact of said event
	- Continue operations with minimal downtime
- Compensating
	- Control using other means
	- Existing controls aren't sufficient
	- Temporary (?)
- Directive
	- Direct a subject towards security compliance
	- Relatively weak security control

> [!NOTE]
> There are many more different types of security controls, some organizations will combine types

# CIA triad
> Combination of principles - fundamentals of security

- **Confidentiality** - Prevent information falling into unauthorized hands
	- *Encryption* - Encode messages such that only the intended recipient(s) can access it
	- *Access controls* - Restrict access to a resource
	- *MFA* - require more information to access a resource
- **Integrity** - Messages cannot be modified without detection; Ensure that information cannot be altered by a third party
	- *Hashing* - A "digest" of data of a fixed length
	- *Digital signatures* - Mathematical scheme to verify data integrity
	- *Certificates* - Combine with signatures to verify an individual
	- *Non-repudiation* - Proof of integrity, can be asserted to be genuine
		- "You can't deny what you did" - Professor Akkaya
- **Availability** - Systems and networks must be up and running
	- *Redundancy* - Build backups that will always be available
	- *Fault tolerance* - System will continue to run even when a failure occurs
	- *Patching*  - Close security holes; Stability

## + N and A
- **Non-repudiation:** Any action you take towards access of data would be accepted, there is no denial it's done maliciously.
- **Authentication:** The process of authenticating.
# Non-Repudiation
> You can't deny what you've said (There's no taking it back)

**Examples**:
- Signing a contract
	- Adds non-repudiation
	- "You signed the contract"
	- Others can see your signature

Adds <u>proof of integrity</u> and <u>proof of origin</u>, with high assurance of <u>authenticity</u>
<u>Proof of integrity</u> means that the data remains accurate and consistent
<u>Hashes</u> are a form of this, acting like a fingerprint - inputted data digested as a string of a fixed length
- If the data changes, the hash changes, however, hashes cannot be reversed (Input cannot be deciphered from the output)
- Here is a `sha256sum` of this file so far: `a18f985de89a457f009025a7d4fbbd3e5c8cde6f635fcbe14e1c24185da29d51`
- Here is the same has function with this line included: `74be5c603cf7bb1670ed34f623336dbec4f241b1fbddff69ca71efb4292f91fe`

## How do digital signatures work?
Imagine *Alice* wants to communicate with *Bob*
*Alice* hashes the plaintext that she wants to send bob
*Alice* then encrypts that hash with her **private key** and sends it over to Bob (along with the plaintext file)
*Bob* uses *Alice's* **Public key** to decrypt the hash sent by Alice
To verify data integrity, *Bob* hashes the plaintext (with the same hashing function) sent over by Alice to see if it matches the decrypted hash
> Since the hash was encoded with *Alice's* **private key** and decrypted with her **public key**, an attempt to decode a message sent from another source will result in gibberish

# AAA framework
> Authentication, Authorization, and Accounting

For Example, the *login* process:
This process starts with **Identification**, or who you claim to be - usually username
The check between your identification, your password, and other authentication factors is called **Authentication**
After you log in, you determine what type of access you have, called *Authorization*
*Accounting* refers to the keeping of logs: data sent/received login/logout time

## How do you authenticate a device?
You cant:
- Store passwords locally (unsafe)
- A system cannot type a password

**Solution**
you put a digitally signed *certificate* on the device and check it on the login process to verify its a company-issued laptop
- sign the device with a self-maintained CA (Certificate authority)
- create a certificate for the device
- voila!
the certificate can now be used as an authentication factor
- the CAs digital signature is used to validate certificate

## Authorization models
> User authenticated, now what?

you can associate individuals with certain permissions - Does not scale nicely
how to ease the scaling?
you can put an authorization model in between the user and the service ( right before user accesses it)

### For example:
An employee needs to handle many services at once to do their job, so the company creates permissions for that one employee on all of the resources
- this is fine for a small company, but what if there were many employees/services?
Setting a layer of abstraction would drastically simplify the process:
**Create a role** with required permissions and set all permissions once. then, give the required employees the role. That way, **Administration in streamlined**

# Gap analysis
> Where you are `vs.` where you *want* to be

Perform frequent gap analyses to map out where security should be going 
can take a long time because there is a lot to consider
- people in org
- data
- technical research

Something that could help is:
## Choosing a framework
it helps you work towards a known baseline or internal set of goals

For example, your org may be using NIST Special Publication 800-171 Revision 2 or ISO/IEC 27001, depending on the **end goal**

To create a custom baseline for your specific use case, you can start by looking at:
- Employees
	- Formal training
	- Current training
	- Knowledge of policies and frameworks

## Gap analysis
begins with:
- Comparing/Evaluating your existing systems
- ID'ing weaknesses and the most effective processes of compensating with those weaknesses
- Create a detailed analysis
	- Examine broader security concepts
	- Break them down into smaller segments

### For example:
![[Pasted image 20240924201240.png]]

## Finally...

- Have a **Final Comparison**
	- Detailed baseline objectives
	- Clear view of the current state
- Include a path of getting from where you are now to the goal
	- Can include:
		- Time
		- Money
		- Change and control


# Zero trust

Networks are generally open once inside, meaning that there are a few security controls apart from the firewall
**Zero trust** refers to the need to authenticate oneself every time you want to control another device
- ***Nothing*** is trusted
	- MFA
	- encryption
	- *more* firewalls
	- logging

A way to achieve this is to split the network into *functional planes*
- basically break security devices into smaller components

Imagine it as having 2 different planes of operation
- **Data plane**:
	- part of device that performs the actual security process
		- switch
		- NAT
		- routing
- **Control plane**
	- Manages the actions of the data plane
		- policies or rules
		- determines how packets should be forwarded
		- Configuration of the device

**Zero trust** requires more implementation of security controls and their evaluation
> For example
- Adaptive identity
	- analyze user's identity and adapt security controls based on not just what the user tells us, but other information gathered, like the
		-  source
            - imagine someone that wants to access a resource that is in the US, is using an IP from china
            - If so, you want to perform additional security to confirm identity
        - Relationship to the organization - physical location, type of connection, IP address, etc.
        - Make authentication stronger, if needed
		- **Threat scope reduction**
			- Decrease the attack surface as much as possible - decrease the possible amount of entry points into the network
		- *Policy-driven access control*
			- combine the adaptive identity with a predefined set of rules

**Security is more then a 1-1 relationship**
- Broad categorizations provide a security related foundation called ***security zones*** - (Understand where they are connecting from)
    - **Security zones** allow us to move from something that is simply a 1-1 relationship and instead looks at the overall path of the conversation. 
        - examine where we're connecting *from* and where we're connecting *to*
            - Trusted, Untrusted
            - Internal, External network
            - VPN x (1, 2, 3, ...)
            - Marketing, IT, Accounting, HR
        - You can use these zones to deny or allow access based on, for example:
            - Untrusted to Trusted zone traffic
            - *Implicit trust*, trust traffic on an internal zone

**Policy enforcement point**
- *Subjects and systems*
    - End users, applications, non-human entities
    - All traffic that communicates through the network, is subject to evaluation by the *Policy enforcement point (PEP)*
        - the PEP is the gatekeeper -  it allows, monitors and terminates connections.
            - can consist if multiple components working together
            - this of this as multiple devices working together to provide identification of the users and traffic

**Applying trust in the planes**
- The PEP is *not* what ultimately makes the decision of allowing, denial, or termination. Instead, it gathers all of the information about the traffic and provides it to a **Policy Decision Point**
    - The PDP is responsible for evaluating the request made by the PEP and *making the decision* based on policy and other information sources
- Policy administrator
    - Takes the decision made by the PDP and forwards it to the PEP
    - Access tokes and credentials may be an outcome of This
    - Everything is then sent to the PEP to tell it to allow, deny, or revoke access (using the policy administrator)

![[Pasted image 20241018014743.png]]

# Physical Security

**Prevent access**
- Barricades

*Made to channel people through a specific access point*
- Or keep out other things
- allow people, prevent cars and trucks

*identify safety concerns*
- And prevent injuries
- Can be used to an extreme
    - Concrete barriers/bollards
    - moat

**Access control vestibule**
eg. a room you have to pass through to get access to the entire building
- All doors are normally locked
    - Opening one door causes others to lock
    - Unlocking one doors prevents others from being unlocked
- One door open / other closed
    - While one is open, the other cannot be unlocked
- One at a times, controlled group's
    - Managed control through an area
*Common for data centers or buildings in which only the appropriate individual should be able to access it
n

**Fencing**
Is an obvious example of physical security because you can clearly see it
May not be exactly what you are looking for, but it *does* provide a good way of preventing access through the area

# Security controls

[[SecurityPlus#The Six Basic Types of Security Controls]]

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

## Security control _types_

- Preventive
  - Block access to a resource
  - "You shall not pass"
- Deterrent
  - Discourage intrusion attempt
  - Doesn't _prevent_ access
- Detective
  - Identify and warn/log intrusion attempt
  - Doesn't _prevent_ access
- Corrective
  - Apply control _after_ an event has been detected
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

[[SecurityPlus#CIA Acronym + N and A]]

> Combination of principles - fundamentals of security

- **Confidentiality** - Prevent information falling into unauthorized hands
  - _Encryption_ - Encode messages such that only the intended recipient(s) can access it
  - _Access controls_ - Restrict access to a resource
  - _MFA_ - require more information to access a resource
- **Integrity** - Messages cannot be modified without detection; Ensure that information cannot be altered by a third party
  - _Hashing_ - A "digest" of data of a fixed length
  - _Digital signatures_ - Mathematical scheme to verify data integrity
  - _Certificates_ - Combine with signatures to verify an individual
  - _Non-repudiation_ - Proof of integrity, can be asserted to be genuine
    - "You can't deny what you did" - Professor Akkaya
- **Availability** - Systems and networks must be up and running
  - _Redundancy_ - Build backups that will always be available
  - _Fault tolerance_ - System will continue to run even when a failure occurs
  - _Patching_ - Close security holes; Stability

## + N and A

- **Non-repudiation:** Any action you take towards access of data would be accepted, there is no denial it's done maliciously.
- **Authentication:** The process of authenticating.

# Non-Repudiation

[[SecurityPlus#CIA Acronym + N and A]]

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

Imagine _Alice_ wants to communicate with _Bob_
_Alice_ hashes the plaintext that she wants to send bob
_Alice_ then encrypts that hash with her **private key** and sends it over to Bob (along with the plaintext file)
_Bob_ uses _Alice's_ **Public key** to decrypt the hash sent by Alice
To verify data integrity, _Bob_ hashes the plaintext (with the same hashing function) sent over by Alice to see if it matches the decrypted hash

> Since the hash was encoded with _Alice's_ **private key** and decrypted with her **public key**, an attempt to decode a message sent from another source will result in gibberish

# AAA framework

[[SecurityPlus#AAA of Security]]

> Authentication, Authorization, and Accounting

For Example, the _login_ process:
This process starts with **Identification**, or who you claim to be - usually username
The check between your identification, your password, and other authentication factors is called **Authentication**
After you log in, you determine what type of access you have, called _Authorization_
_Accounting_ refers to the keeping of logs: data sent/received login/logout time

## How do you authenticate a device?

You cant:

- Store passwords locally (unsafe)
- A system cannot type a password

**Solution**
you put a digitally signed _certificate_ on the device and check it on the login process to verify its a company-issued laptop

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

[[SecurityPlus#Gap Analysis (What is missing in our System?)]]

> Where you are `vs.` where you _want_ to be

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

- **_Nothing_** is trusted
  - MFA
  - encryption
  - _more_ firewalls
  - logging

A way to achieve this is to split the network into _functional planes_

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
    - source - imagine someone that wants to access a resource that is in the US, is using an IP from china - If so, you want to perform additional security to confirm identity
      - Relationship to the organization - physical location, type of connection, IP address, etc.
      - Make authentication stronger, if needed
    - **Threat scope reduction**
      - Decrease the attack surface as much as possible - decrease the possible amount of entry points into the network
    - _Policy-driven access control_
      - combine the adaptive identity with a predefined set of rules

**Security is more then a 1-1 relationship**

- Broad categorizations provide a security related foundation called **_security zones_** - (Understand where they are connecting from)
  - **Security zones** allow us to move from something that is simply a 1-1 relationship and instead looks at the overall path of the conversation.
    - examine where we're connecting _from_ and where we're connecting _to_
      - Trusted, Untrusted
      - Internal, External network
      - VPN x (1, 2, 3, ...)
      - Marketing, IT, Accounting, HR
    - You can use these zones to deny or allow access based on, for example:
      - Untrusted to Trusted zone traffic
      - _Implicit trust_, trust traffic on an internal zone

**Policy enforcement point**

- _Subjects and systems_
  - End users, applications, non-human entities
  - All traffic that communicates through the network, is subject to evaluation by the _Policy enforcement point (PEP)_
    - the PEP is the gatekeeper - it allows, monitors and terminates connections.
      - can consist if multiple components working together
      - this of this as multiple devices working together to provide identification of the users and traffic

**Applying trust in the planes**

- The PEP is _not_ what ultimately makes the decision of allowing, denial, or termination. Instead, it gathers all of the information about the traffic and provides it to a **Policy Decision Point**
  - The PDP is responsible for evaluating the request made by the PEP and _making the decision_ based on policy and other information sources
- Policy administrator
  - Takes the decision made by the PDP and forwards it to the PEP
  - Access tokes and credentials may be an outcome of This
  - Everything is then sent to the PEP to tell it to allow, deny, or revoke access (using the policy administrator)

![[Pasted image 20241018014743.png]]

# Physical Security

[[SecurityPlus#Physical Security]]

**Prevent access**

- Barricades
_Made to channel people through a specific access point_

- Or keep out other things
- allow people, prevent cars and trucks

_identify safety concerns_

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
- One at a times, controlled group's - Managed control through an area
  \*Common for data centers or buildings in which only the appropriate individual should be able to access it
  n

**Fencing**
Is an obvious example of physical security because you can clearly see it
May not be exactly what you are looking for, but it _does_ provide a good way of preventing access through the area
It is **robust** because it is _difficult_ to cut the fence
it _prevents climbing_ through its razor wire and its stature

**Video surveillance**
CCTV can replace physical guards

- Camera features are important
    - Motion sensor can alarm and alert when something moves
    - Object detection can ID a license plate or a face

- Often many different cameras
    - Networked together and recorded over time

**Security guard**
Provides physical protection at the reception area of a facility and validates identification of existing employees

Two-person integrity/control can minimize an exposure to an attack because you have a second security guard to provide checks and balances
No single person has access to a physical test

Access badges has details about the owner. You'd wear this at all times to make your authentication level public
can be used with electronic locks to log events in a database

Lighting usually means more security, as an attacker might want to stay out of sight, so angles are important (for example, for facial recognition)
IR cameras can also be helpful for surveiling attackers
Avoid shadows and glared

Infrared detects IR in light and dark areas, and dont need to have lights to work
common in motion detectors
Also, pressure sensors

Microwaves detect movement over a larger area than IR

Ultrasonic work on reflected sound waves and can be used for motion and collition detection and more

# Deception and Disruption

[[SecurityPlus#The "Honey" Traps]]

**Honeypots**

Essentially, attract the bad guys and keep them there, usually to monitor the security techniques that they are using against you
Usually, attackers are automated processes. The goal for this is to surveil the type of automation that is being used and what type of systems are being attacked

*Honeypots* are like a virtual world that invites attackers. They are not usually part of the production line

Creates a constant battle to discern the real from the fake (for the attacker).

Common to include many honeypots in a network called *honeynets* - to make them look more real. Essentially, a larger deception network

*Honeyfiles* are files that appear to be very important and sensitive, but are actually duds
Serves as "bear traps", as nobody would access the file in the main network, so if it is accessed, an alarm is sent

*Honeytokens* are traceable data that can be used to trace copied data that got published into the internet
If data is stolen, you'll know where it comes from
- Example:
    - API credentials that do not provide access, but instead send notifications when used
    - Fake email addresses
    - Database records
    - Browser cookies
    - etc

# Change management

Usually, when making changes to an OS or any other piece of software at home, the scope is 1 device, however, in an organization, the scope could be hundreds or even thousands of devices
To make a change to anything, you need to go through a process to make sure that the change will not break anything

Updates are important, as they can supply security updates
However, if changes are unmoderated, applications could break

It is helpful to have policies to dictate *how* and *when* software should be updated. Also, rollback procedures

We have these processes to ensure uptime and availability of the systems, so that there is no confusion about the changes, and to avoid mistake

## Change approval process

Typically, the first step to get a change approved, would be to fill out a formal change control process form 
 - To inform the higher-ups that make the decision about what changes are being made
 - To determine the purpose of the change
 - To ID the scope of the change
 - Scheduling process
 - Impact of the changes and systems affected
 - Analyze the risk
 - Then, get approval from the board
 - Get end-user acceptance

## Ownership

The start of the change control process usually start with the owner of the app/data wanting to make the change, as they are not usually who perform the actual change 
They are kept in the loop of the change control process, and when the process is complete, they are responsible for testing the change
> [!For Example]
> Address label printers need to be upgraded, so the shipping department (owners) hands them off to the ID team, who upgrade (change) the machines

Something important to consider are the **stakeholders**, as they'll want to have input on the change management process
May not be as obvious, as some changes can affect a lot or few people, so research is needed
> [!For Example contd.]
> The upgrade could affect the delivery times, which would in change impact the CEO

## Impact analyses

There is a risk to every change, each with different severities.
Could be a *high*, *medium*, or *low* risk values, and could be far reaching
- The "fix" Doesn fix anything, or breaks something else
- OS failure
- Data corruption

You also have to ask yourself: What is the risk of *not* making the change
- Security vulnerability
- App unavailability
- unexpected downtimes

## Testing

Given the risks, you might want to conduct extensive *testing* with a **sandbox testing environment**
These testing environments have no connection to the real world or production systems, and are a technological safe space

The idea is to have a duplicate of the production environment so that the changes affect it as it would the production environment

### Backout plan

Also a good time to test the *contingency plan*, so that you have documented steps to revert the changes

This is why you need a *backout plan* so you can have a way to revert to the original config
This isn't as easy as it sounds
**Always** have backups

## Maintenance window

The change itself may be very simple
The difficult part is finding *when to implement the change*, so it has to be planned and considered.
Have maintenance hours so that you dont impact as many people, as potential downtime could affect a large part of production
You also have to consider what time of year to implement the change

## Standard Operating Procedure (SOP)

Change management is critical, as it affects everyone in the organization

The change process should be well documented and should be part of the SOP, and should be read-only unless given authority

# Technical change management

[[SecurityPlus#Process of Applying Change]]

Refers of putting the change into action (execute the plan)
When working in a large environment, the process can have many moving parts

> [!IMPORTANT]
> Change management is concerned with *what* needs to change. The **technical team** in concerned with *how* to change it

For example, a technician could be asked to make changes to an allow/deny list
If an application is discovered to be malicious, a technician would be asked to add it to a deny list
- Allow lists are very restrictive, as nothing runs unless its approved
- Deny lists are more lenient, as everything that is not on the list can run
    - Anti virus

When a change is submitted to documentation, there is a specific reason, or scope, listed, and you are only allowed to make the changes listed

> A change control board gives you a 2-hour window to update printers
> You CANNOT update or change anything else in that time frame, although it may be expanded, if for some reason the update **requires** changing a file on everyone's system

This is why its important to have a well-documented change process

## Downtime

Change control is often associated with downtime, and even though its not true 100% of the time, it is true very often
This is the reason changes are made during non-production hours

In a 24/7 workspace, it is uncommon to have enough time for scheduled downtime. 
Some systems switch to a secondary system, update the primary, then switch back to *mitigate downtime* whenever possible

This move is most likely automated for speed
If nay problems are encountered, it is fast to switch to secondary system, which is part of the **Backout plan** [[1 - General security concepts#Backout plan]]

### Restarts

When implementing

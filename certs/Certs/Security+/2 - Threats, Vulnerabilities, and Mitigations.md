---
id: 2 - Threats, Vulnerabilities, and Mitigations
aliases: []
tags: []
---

# Threat actors

Refers to an entity responsible for a safety event, AKA malicious actor

- Why is this happening?
- Is this directed or random?

## Attributes of threat actors

- Internal/external
- Resources/funding
  - Access to resources
- Level of sophistication
  - Script kiddie or master hecker (TM)

**What motivates them?**

- Data exfiltration
- Competition
- Espionage
- Service disruption
- Blackmail
- Financial gain
- Revenge
- Ethical

## Types of threat actors

### Nation state

A government trying to heck you

- data exfiltration
- political reasons
- war
- control of other govts resources
  Constant, massive attacks due to large resources
  Referred to as Advanced Persistent Threat (APT)
  > **Highest sophistication**

> [!STUXNET worm]

### Unskilled attackers

Script kiddies
Run premade scripts without any additional knowledge
Motivated by the attack itself
_Usually external_, but could be internal
Not a lot of resources
No formal funding

### Hacktivist

Hacker with a purpose
Often internal, with potential to infiltrate
Can be remarkably sophisticated, with very specific attacks
Funding may be limited

### Insider threat

More than passwords on sticky notes
Extensive resources, eating away from the inside
Medium level of sophistication

### Organized crime

Professional criminals, motivated by money and almost always external
Very sophisticated
_Organized_ Crime
Very hard to track

### Shadow IT

A group or department that go around IT rules
Build own infrastructure
Unencumbered, as they are not moderated by the company
Limited resources, although they might be able to innovate
Medium sophistication

### Threat actor attribute table

| <center>Threat actor</center>    | <center>Location</center> | <center>Resources</center>       | <center>Sophistication</center> | <center>Possible motivations</center>                                 |
| -------------------------------- | ------------------------- | -------------------------------- | ------------------------------- | --------------------------------------------------------------------- |
| <center>Nation state</center>    | <center>External</center> | <center>Extensive</center>       | <center>Very high</center>      | <center>Data exfiltration, philosophical, revenge, war</center>       |
| <center>Unskilled</center>       | <center>External</center> | <center>Limited</center>         | <center>Very low</center>       | <center>Disruption, Data exfiltration, philosophical beliefs</center> |
| <center>Hacktivist</center>      | <center>External</center> | <center>Some funding</center>    | <center>Can be high</center>    | <center>Philosophical beliefs, revenge, disruption/chaos</center>     |
| <center>Insider threat</center>  | <center>Internal</center> | <center>Many resources</center>  | <center>Medium</center>         | <center>Revenge, financial gain</center>                              |
| <center>Organized crime</center> | <center>External</center> | <center>Often extensive</center> | <center>Very high</center>      | <center>Financial</center>                                            |
| <center>Shadow IT</center>       | <center>Internal</center> | <center>Many resources</center>  | <center>Limited</center>        | <center>Philosophical beliefs, revenge</center>                       |

# Common threat vectors

A threat vector is a method used by the attacker to gain access to the target

# Phishing

# Impersonation

[[SecurityPlus#Different Types of Impersonation]]

Refers to when attackers pretend to be someone they arent
They use the trust from authority/familiar figures to extract info from victim

Before the attack, the trap is set

- "Congrats on perfect payment history, you now qualify for 0% interest credit. Enter your password to redeem"

_Identity fraud_

# Watering hole attacks

[[SecurityPlus#Different Types of Impersonation]]

Refers to when attackers cannot get in directly, so they try to get in through a proxy
For example, company A issues paychecks with bank B, so attacker infects B so that it in turn will infect A with malware

# Other social engineering attacks

**{Mis/Dis}information**
**Brand impersonation**

# Memory injections

**Malware runs in memory**, so malware has to get into memory to be effective

- DLLs
- Threads
- Buffers
- Memory management functions
  It can do this through _memory injection_

Essentially, when a process runs, all the code that it is going to execute is on memory addresses
start <----------------------------------------> end
A vulnerable application may allow that memory to be changed, and in turn, executed
start <-----------injected code----------------> end

# Buffer overflows

When too much data is written to a memory buffer, and leaks onto the memory of another process
**Not simple**

In this example, a B value > 24,000 gives admin rights to the application, while a B value < 2000 only gives user rights
A is vulnerable to _buffer overflow_
A | B
null | 1979
\[00] \[00] \[00] \[00] \[00] \[00] \[00] \[00] | \[07] \[BB]
The string "excessive" is written to A, however, A can only handle 8 characters, so hex value 65 (E) is written as first byte in B
A (null) B (1979)
\[E] \[X] \[C] \[E] \[S] \[S] \[I] \[V] | 25856
\[65] \[78] \[63] \[65] \[73] \[73] \[69] \[76] | \[65] \[00]

# Race condition

When 2 events run at (almost) the same time, and the application does not expect that

**TOCTOU** attack:
A checks value ... A retrieves value ... A uses value in a function O :)
A checks value ... A retrieves value ... B changes value ... A uses (changed) value in a function X :(

# Malicious updates

Always keep your operating system up to date

When you update software, you are basically installing a new application, so you have to be careful not letting hackers inject malicious code into the app

Follow best practices

- Have backups
- Install from trusted sources
- BACKUPS~~
- Dont trust a random download buttons
- Dont disable security controls

## SolarWinds Orion supply attack

Dec 2020
Attackers gained access to development system
Added their own malicious codes to the update

### Escalation

does not necessarily mean privilege escalation

for example, you make a support ticket because your OS crashes,
it goes to L1s, who _dont know_ how to solve it, so they **escalate** to L2s
L2s dont have the privileges, so they **escalate** to the next group

# Virtualization vulnerabilities

When an attacker can access resources of one VM from another, its called a \*VM **Escape\***


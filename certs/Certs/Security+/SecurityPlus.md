# Security+ Overall Test Map
---
# Section 1

## Percentage of Tests
- 12%: General Security Concept
- 22%: Threats, Vulnerabilities, and Mitigations
- 18%: Security Architecture
- 28%: Security Operations
- 20%: Security Program Management and Oversight Domain

## What to Expect
- Three to five performance-based questions.
- 90 questions.
- Score at least 750 points out of 900.
---
# Section 2

## Difference between Information Securities
- Information Security: Securing of data.
- Information System Security: Securing of the systems that hold the data
> It's in the name, just look at how someone would secure a **system** over someone who takes care of data.

## CIA Acronym + N and A
- **Confidentiality:** Whoever holds the data is trusted with it they have **confidence** that it will be fine.
- **Integrity:** The data will never get changed or **corrupted**, never change on transfer for example.
- **Availability:** Makes sure the data is always accessible to the right users
> These things make sense as you would want your data to have these qualities.

- **Non-repudiation:** Any action you take towards access of data would be accepted, there is no denial it's done maliciously.
- **Authentication:** The process of authenticating.

## AAA of Security
- **Authentication:** The process of authenticating.
- **Authorizatrion:** The process of **viewing** what permission you have.
> (Are you an admin? Are you a user? Do you have read or write access?)
- **Accounting:** Monitoring how a user uses the internet
    - Usually for audit or billing purposes, as well as tracking any unauthorized behavior.

## Different Planes
- **Control Plane:**
    - Could be to reduce any threat.
    - Securing certain zones.
    - Control by policies on a system.
- **Data Plane:**
    - The engine used for these policies.
    - Seeing **how it will be handled.**
    - Making sure these policies are established.

## Threats and Vulnerabilities
*Threats* are any **potentials that could cause harm** to a system.\
Vulnerabilities are what is weak in a software design.

- **Internal threat factor:** You have control over what is not safe in a system.
> For example, turn your firewall on!
- **External threat factor:** Any outside threats that you cannot expect are outside of your control.

## Confidentiality
- Access Controls: The controls that would **actually switch the permissions** for each user in a system.

## Integrity
- To keep your data from being corrupted or modified, consider these properties or methods:
    - Hasing: process of converting data to a fixed-size value.
        > Like a digital fingerprint, it will always keep it if it doesn't change.
    - Digital Signatures
    - Checksums
    - Access Controls
    - Regular Audits: **Review logs** to see if anything has been changed.

## Being Redundat with your System's Availbility
- Consider the following when designing a system:
    - Have server redundancy: Have servers they can jump back to.
    - Data Redundancy: Multiple backups in case something goes wrong.
    - Network Dedudnacy: Have different types of connections you can have if one connection goes out.
    - Power redudnacy: Install battery backups or generators.

## Process of creating a Digital Signature
This is **Non-Repudiation**! This is all about trust!
> It's hashed, signed, and encrypted using asymmetric encryption.

## Accounting (Logging and Monitoring)
The technologies used to perform these thinngs are the following:
- Syslog servers: Can detect certain anomolies ina  network and notify an admin
- Network Analzers: It shows all the in and out connections like Wireshark.
- Security Information and Event Management: SIEM, is what gives you ana analysis and generates alerts.
> This would be the tool that would help one a lot over manually looking.

## The Six Basic Types of Security Controls
- Preventive Controls
- Deterrent Controls: Lets the hackers know thier place when they start thinking about their activities are logged and how they can get caught.
- Detective Controls: Monitor and alert for any weird activity.
- Corrective Controls: It does everything to remove any problems.
- Compenstating Controls: For any solutions that are available now (that is the best) it will take.
> For example: Since you don't have WPA3, you use WPA2, which is still good.
- Directive Controls: The policies or **documentation** that helps you choose what to do.

## Gap Analysis (What is missing in our System?)
You can analyze what is missing in a system. Could the network infrastructure not be fast enough to support data encryption? Could the current business model of not utilizng all parts ot eh cloud server be to their disadvantage?

These are the surface level ideas, until we have this **plan you must remember**:
- Plan of Action and Milestones (POA&M): Outlines the specific measures that one would need to take to fix any gaps in a current system, plus the timelines that is expected.
> Imagine yourself writing the documentation for the company to properly show your boss what he would need to upgrade so you can ensure the system is work at it's best within a certain time frame, cost estimate, and resources needed.

---
# Section 3
Threat Actor Attributes:
- Unskilled Attackers: Script kiddies
- Hacktivists: They just want to hack to prove a point, AKA drive by politics or their ideologies.
- Organized Crime: Hacker or malicious groups that are usually good at what they do.
- Nation-state Actors: Hackers form the government to initiate cyber warfare or spy on targets. 
- Insider Threats: People inside the company who do malicious acts.

## The "Honey" Traps
- Honeypots
- Honeynets: An entire network of decoy servers
> This would be an incredible prank to pull on hackers who think they are skilled, this would make it so they think they have access to an entire network. What losers!
- Honeyfiles
- Honeytokens: Fake user credentials, when they are accessed by a hacker bro, the admins are notified.

## Hacktivists (The Hipster Hackers)
Since they have a more political or ideological motivation, their intention is usually to change the **visual** apperance of something, or leak some data to prove their point.

Here is what they usually do:
- Website Defacement
- DDOS Attacks
- Doxing
- Leaking of Sensitive Data

## Shadow IT
Usage of devices you brought from home is dangerous. Using an online service that is not authorized can also be another bridge to a possible vulnerability.\
This is called **Shadow IT**.

BYOD - Bring Your Own Devices (NOT RECOMMENDED)
- Consider you bring a wireless mouse.
    - This would install a driver that adds another possible point of risk.

## Tricking the Hackers
- **Dynamic Page Generation:** When a web craweler is used, much of website changes over and over, making it impractical to scrape certain formatted data.
- **Port Triggering:** When some ports are closed until a certain outboad traffic request is dtected from a user.
> This is like when a secure door is opened from someone who has authenticated themselves, it remains closed once they get in.
- **Fake Telemetry Data:** Sending fake telemetry to a hacker.
> A hacker gets back data that says your system is "Windows 10" when you're on MacOS, you have configured this behavior.

---
# Section 4

## Physical Security
- Bollards: The thin cylindrical posts (they are usally yellow) that prevent cars from coming into the sidewalk.
    - A strength of ASTM F2656-07 M30 P1 should take in any vehicle that tries to collide into it.
    - Prevents vehicles primarily.
> Think like more sturdy traffic cones.
- Access Control Vestibule: The double-door that is designed to allow one person to enter at a time.
    - The area between the first and second door have checking systems.
    - **Piggybacking:** Allowing someone to go through this.
    - **Tailgating:** Someone follows you in closely.
> You can also see a spinning ACV like in the Elf movie.


## Video Surveilance
- Wireless Wi-FI video surveilance solutions can be interfered. It's preferable to install a camera system through well put wires.
- The point is to always check entrances to sensitive areas and the sensitive areas themselves.

- Looking at the various **sensors**:
    - Infrared sensors: Usually emitted by warm bodies.
    - Pressure sensors: Usually installed on floors.
    - Microwave sensors: Detects movement by the microwave pulses.
        - Not recommended since they are sensitive.
    - Ultrasonic sensors: Some hackers used specialized tools to alter the frequences to perform certain instructions on a system.
    > It's best to have a system that can detect this wireless interference.

## Rejection Rates
- **False Rejection Rate (FRR)**: When a system doesn't let an authorized individual in, and how many times it has done it.
    - To see if a biometric check is worth buying, check its **Equal Error Rate (EER)** or **Crossover Error Rate (CER)**. It should be lower in error rate.
- When it comes to **protecting servers**, buy this:
    - A good **cipher lock**, it has mechanical locking mechanism.

---
# Section 5

## Different Types of Impersonation
- Impersonation
- Brand Impersonation: when an attacker uses a comapnies logo or something to mkae it seem like it's legit.
- **Typosquatting:** Redirect to a website that has a URL that looks similar to th real one. 
- Watering Hole Attacks: Attackers would hack a certain service someone may use, trapping them.
> Since this is a third-party attack, there is a chance they are being more discrete in their attacks.

## Pretexting
- Give some context before performing an attack, you can say something that is likely of what they have.
    - For example, you can try to guess the printer or OS they have by asking them to check for you.
    - If this printer is connected to the internet, you have one form of data you can work with.

## The Different Types of Phishing
- **Spear Phishing:** Gathering intel on an indivual or a group to personalize their attack.
- **Whaling:** Trying to hack the higher-ups.
- **Business Email Compromise (BEC):** Using one employees email account to send a malcious email to all the others.
- Vishing: Phone or voice phishing.
- Smishing: SMS or messages based phishing.

## TrendMicro Employee Phishing Test
- You can sign up for this [service](<https://phishinsight.trendmicro.com/>) to test your employees for phishing.
    - This will truly see if you need to conduct an anti-phishing compaign event.

## Types of Social Engineering Attacks
- Diversion Theft: Creating a distraction to then steal
- Hoaxes: Often paired with phishing and impersonation attacks.
- Shoulder Surfing: Have security screen to avoid this.
- Dumpster Diving
- Eavesdropping
- Baiting
- Piggybacking and Tailgating

---
# Section 6

## Types of Attack Vectors
- Threat vector: What is made vulnerable to attack.
- Attack vector: Their action to attack.

## Different Types of Malware
- Virus: Simply software that spreads into **one computer system**.
- Worms: **Self-replicating** malware that spread to **multiple** computers.
> Note that these work on their own! **No user interaction required!**
- Ransomware: Encrypts data until the user pays.
- Trojans: Disguised as desirable software (like games or software you need)They require the user to press something to activate, and spread over at least **one computer**.
    - Trojans can act like replicating worms, but they always require at least one user input!
- **Zombies:** Usually the result of Worms/Trojans, these infected computers all help towards malicious acts over other computers, like spamming other computers.
    - They are controlled by an attacker!
> Botnets are important to recognize, an **army of Zombies is a Botnet!** 
- **Rootkits:** The sweetspot. It's a tool you install on a victims computer to go deep into the OS level to get **root** access to files.
    - Kernel mode would let you go as low as modifying drivers for critical parts of your computer.
    - DLL injections are also part of this on Windows.
- Backdoors
- **Logic Bombs:** Embeded code into programs to execute whenever it's designed to execute.
    - Usually at the start of opening it.
- Keyloggers: For recording key strokes.
- Spyware/Bloatware

## Viruses in Detail

### Boot Sector Virus
- When the computer starts, its in the first part of hard drive, so it will always run while booting.
    - Very difficult to detect, but AVs can help.

### Macro Virus
- Malicious code embeded into a file.

### Program Virus
- It installs itself to another program, like a macro but in real-time.

### Multipartite Virus
> Combination of both Boot Sector and Program Virus.
- Installed on the boot sector **(first part of the hard drive)** and it also has code that attaches itself to a program **(program virus)**.
> If you try to uninstall a virus, and it comes back, check the boot sector and remove it there! 

### Encrypted Virus
- A virus smart enough that its code is practically undetectable with encryption or unique code.

### Polymorhpic Virus
- Advanced virus, it will change its code by putting it across different addresses each time its started.

### Metamorphic  Virus
- **Very advanced** virus, it's able to rewrite itself.

## Trojans
- Trojans can have **RATs** (Remote Access Trojans), which can have a hacker remote control a machine.

## Controlling Zombies
- You can control an infected computer with a C2 node. The following node is really called:
    - **Command and Control Node**
- With the power of a herd of zombies or a botnet, **you can combine the processing power** of each computer **to bruteforce** certain desired actions.

## Detecting Rootkits
- Take the hard drive, and use a good isolated anti-malware scanning solution in a live-boot Linux distribution.

## Modern Malware Techniques
- Fileless malware is possible **via editing the system memory** without having to write files.
- New types of malware to remember:
    - **Droppers:** Malware that runs on a payload
    - **Downloaders:** Malware downloads what it needs to work
        - It could download libraries, software, etc.
    - **Shellcodes:** Lightweight code that executes on a given target

## Living Off The Land
- A modern way of using pre-existing tools (like PowerShell) to perform certain actions.
> It's coming "off the land" (what is already there).

## The Different Types of Indications
You should be aware of these signs of compromise.
- Account Lockouts: If there is a sign of multiple lockouts on various accounts.
- Concurrent Session Utilization: In theory, a user should only have **one** session up.
- Blocked Content: If there is a ton of alerts about this from one computer or multiple (if they are the same). 
- Impossible Travel: If there is a sudden change in lcoation with the IP.
- Resource Consumption
- Out-of-cycle Logging: When logs generate at certain weird times (outside of normal work hours)
- Missing Logs: Deleted logs to hide evidence
- Documented Attacks

---
# Section 7

## Types of Data
Levels of Sensitivity:
- Unclassified: Public
- Sensitive but Unclassified: Prerferred not to share
- Confidential: Serious effects
- Secret: Serious damage
- Top Secret: Damage national security

## Data Controllers
This is new, you should recongize those who have different roles in managing data.
- Data Owner: Maintains the data secret, always keeps it in its original state, and avaialble when neccesary.
    - This should not be delegated to the CIO or the IT department!
    - The people in the department that **know more about the context of the data** should be the Data Owner.
- **Data Controller:** Decides who should have access to data, and if they are complying.
- Data Processor: Collects, stores, or analyzes data.
- **Data Steward:** They make sure the data is in its best quality
- **Data Custodian:**  They are the **sysadmins**, they **control the system** where the data is being held.

### Privacy Officer
- In charge of any data like PII (Personally Identifiable Information), SPI (Serial Peripheral Interface), or PHI (Protected Health Information).
> These are the people on top of data breaches! They will find ways to mitigate effects.

## How Data is Moving
Data could be at rest, encrypted, or moving. It's always a good practice to close off the doors (encrypt) when you're done.

When you want to securely move data, you should use these methods:
- Secure Sockets Layer (SSL)
- Transport Layer Security (TLS)
    - These have cryptographics protocls so youre data safely moves in an encrypted state.
- VPN
- Internet Protocol Security (IPSec)
    - It authenticates and encrypts each IP packet.

## Data Sovereignty
Any data you store is subject to the laws of the country.
> For example, if you're in the UK, and you have your data stored in the US, you are not protected under GDPR, but by the US government/state laws.

- GDPR is similar to the CCPA in the US, they give citizens rights to the removal of their data in companies.

## How Should We Secure Data?
- Tokenization is important, it's what is primarily used to store credit card data for example.

## Data Loss Prevention Detailed
Data Loss prevention may be obvious, but there are many systems to be aware about:
- Endpoint DLP System: It monitors the data that is on the computer (so it doesn't change or get removed!)
- Network DLP System: It detects data on transit.
-  Storage DLP System: Usually installed in data centers, it inspects data while the data is at rest.
- Cloud-based DLP System: SaaS (Software as a Service) this service is enabled in the cloud service you use.

- When you are working with a system, you set certain rules, you would usually set the following parameters:
    - Name
    - Desc.
    - Scope (Which groups does it affect?)
    - Condition (the actual logic to check)
    - Alert

---
# Section 8

## Cryptographic Solutions
While algorithms are cool, what really matters is your key.
- These algorithms are open source, anybody can figure out thow they work, but they can't virtually do anything unless they have a key.
- You should regularly rotate your keys.

## Different Types of Solutions
- Symmetric Algorithms
    - Single key: The sender and the receiver would have to know the same secret
- Assymetric Algorithms
    - Two keys: Used to **encrypt** the data, and **decrypt** the data
- Hashing
- Hash Security
- Public Key Infrastructure (PKI)
- Digital Certificates
- Blockchain
- Encryption Tools
- Obfuscation
    - Steganography
        - Hiding data in seemingly ordinary files
    - Tokenization
        - Substitture senstive to non-sensitve data (to refer to)

## Algorithm Cipher Types
We can look at the types of algorithms like this:
- Stream Cipher: It utilizes a keystream generator bit by bit by using XOR
    - Good for streaming video or audio (realtime data streaming)
- Block Cipher: Breaks up the data in trhe power of 2 usually (64+) and performs encryption each block
    - Easier to implement

## Symmetric Algorithms
You don't need to memorize the numbers, bit just know these are symmetric.

- **Data Encryption Standard (DES)**
    - Breaks input into 64-bit blocks, transports and substitutes, with a key strength of 56-bits **(not that secure)**
- **Triple DES (3DES)**
    - Secure modifcation of DES, with it having three different symmetric keys. (they are all encrypted, decrypted, and encrypted into ciphertext three times) creating a 112-bit key **(better)**
- **International Data Encryption**
    - Uses 64-bit blocks to encrypt
- Advanced Encryption Standard (AES)
    - Uses 128-bit, 192-bit, or 256-bit blocks wth a match key size to encrypt
    - The US government uses this algorithm for their documents
- Blowfish
    - 64-bit blocks and variable length (you can change the amount for the key) to encrypt
    - Made as a replacement for DES
- Twofish
    - Uses 128-bit blocks for encryption, and uses 128-bit, 192-bit, or 256-bit encryption keys
- RC Cipher Suite
    - RC4: 40-bits to 2048-bits that is used in SSL and WEP
    - RC5: Block cipher, uses key sizes up to 2048-bits
    - RC6: DES replacement attempt

## Asymmetric Algorithms
This is the key to use if you want a key that is open to the public user, but also one available to a private group.

### **Digital Signature**
When the user (with his only key!) sends a hashed message, and he/she can be the only one to create it, it creates a Digital Signature. 

The different types of Assymetric Algortithms are:
- Diffie-Hellman
    - Usually used for VPN tunnels, it allows for key echange for IPSec
    - It can start in an unsecured network 
- Rivest-Shamir-Adleman (RSA)
    - The algorithm is based on the difficulty of factoring large prime numbers.
> RSA can support up to 4096 bits. It's used in a keychain that changes number for MFA!
- Elliptic Curve Cryptographic (ECC)
    - Based on the algebraic structure of elliptical curvers over finitre fields to define the keys.
> This is just as secure as RSA with a 2048-bit key!
- Elliptic Curve Diffie-Hellman (ECDH)
    - ECC fork of Diffie-Hellman
- Elliptic Curive Diffie-Hellman Ephemeral (ECDHE)
    - Uses a different key for each **portion** of the key (DAMN!) so its cut up to build a key.
- Elliptic Curve Digital Signature Algorithm (ECDSA)
    - The public key algorithm used by the US gov. for their digital signatures

### An Important Things to Remember
- ECC is mostly used for low-spec devices like phones. (Less processing)

## Hashing
One-way cryptographic function that takes and input and produces a unique message on output.

Here are the different Hash algorithms:
- MD5: Creates 128-bit hash value 
- SHA-1
- SHA-2
- SHA-224
- SHA-256
- SHA-384
- SHA-512

Break!
### New version of SHA
SHA-3 can go between 224-bits and 512-bits

- RIPEMD (RACE Integrity Primitive Evaluation Message Digest)
    - 160-bit is most common used
    - Open Source alternative to SHA

Continued...
- HMAC (Hash-based Message Authentication Code)
    - Usually paired with MD5 and SHA.
    - It's main use case is in Digital Signatures
> This goes back to non-repudiation! This is essentially saying that I have a key to open your encrypted content!


## Increasing Hash Security

### Types of Attacks
- **Pass the Hash Attack:** Using a hashed password over a plaintext password if available to the hacker.
- **Mimikatz** is a tool that can let you store hased passwords
- **Birthday Attack:** When you have two messages that result in the same hash, resulting in a conflict.
    - Think of it like this, you could send a message that produces the same hash as your password to log in.

### Protecting Mechanisms
- Salting: Adding random data to protect against password cracking techniques.
    - This is added to passwords
- Key Stretching
    - What is usually shown to brute force a password, so if its more complex, it would take longer to brute force.
- Nonce or **"number used once"**:
    - Usually unqiue and random, for the authentication process.
- Limiting failed login attempts

### Public Key Infrastructure (PKI)
A system based on asymmetric encryption.
- An example is the process of a [secure SSL/TLS tunnel process](<https://www.sectigo.com/uploads/browser/Sectigo-Quantum-Lab-Diagram.png>).
- Ensure secure communication and data exchange on the internet.

## Digital Certificates
- The key that indentifies the user/server.
    - X.509 is what contains a lot of identifiable information.
> You could certify that the certificate present on aemail belongs to the user you know to trust.

Different Types of Certificates:
- Wildcard Certificates
    - *Wildcard*, think all possible instances being valid! You should be able to access all subdomains.
- Single-Sided Certificates
    - Only the server would certify itself to you.
> Think of when you see a certificate on a  website, and you don't have to do anything.
- Dual-Sided Certificates
    - Requires both the user and server to be identified, mor secure in some instances.
- Self-Signed Certicates
    - The same person who says they certify who they are, without anybody else checking (self-checked).
> This is usually for developers testing things, it should never be used in production.
- Third-Party Certificates
    - This is where a third-party verifies the one providing the service.
- Root of Trust
    - Like a family tree, you go up through certificat authorizations, until you reach the top level.
- Certificate Authority
    - The one who **actually** issues the digital certificate.
> You usually purchase a certificate for your website.
---
- Registration Authority
    - Example Process Below
> - Go to website diontraining.com
>   - Browser goes through trusted third party and pulls key.
> - Browser encrypts the key, so it can become a **shared encrypted key**.
>   - (It should be safe to share with others)
> - But, only the server would be able to decrypt your message. Not the other users.
- Certificate Signing Request
    - A block of encoded text containing the information about the person who is requesting the certificate.\
    Could include the following info:
        - Organization Name
        - Domain Name
        - Locality
        - Country
    - This is one of the first processes when a user request a certificate from a site.
    - This would create the final certificate that identifies you.
        - Would not be sent to the one who gives you the certificate. Only you. 
- Certificate Revocation List
    - The "blacklist", these certificates have been revoked from certain sites.
    - This is usually from data breaches.
- Online Certificate Status Protocol
    - This is the protocol used by your browser if the CRL does not exist, however, it's not encrypted. 
- OSCP Stapling
    - The process of getting the Online Certificate Status Protocol *every few intervals.*
    - Usually gets integrated in the TLS handshake, and speeds up this part of the connection.
- Public Key Pinning
    - This is allows to resist any impersonations by presenting trusted public keys, if anything it finds is suspicious in the impersonated key, it will alert you.
- Key Escrow Agents
    - This should be set up, as Key Escrow Agent is a back up toyour keys.
- Key Recovery Agents
    - Allows you to restore keys if they get corrupted.

## Encryption Tools
- Trusted Platform Model (TPM)
    - Hardware-level security that offers encryption with keys for the user.
> One famous example is the BitLocker application to encrypt drives on Windows.
- Hardware Security Model (HSM)
    - A seperate physical device that manages your digital keys.
> This would be great for highly sensitve data, if the systems fail, they still have access to the keys.
- Key Management System (KMS)
    - Generates, distributes, and manages cryptographic keys.
    - Would be perfect so you don't have to manually mange your own keys.
- Secure Enclave
    - Important cryptographic hardware chip that is seperated from the CPU.
    - Could store sensitive data like cryptographic keys, fingerprints, etc.

## Obfuscation
- Steganography
    - Having data obscured/hidden, so no suspicion of data is even thought of.
    - It means "covered writing", like when you would obfuscate your programs.

## Cryptographic Attacks
- Downgrade Attack
    - One person can try to intercept between two people sending messages, and force them both use a less secure encrypted protocol. Since these computers must all use something that is compatible between all, it would introduce a higher security risk.

### Overcoming Quantum Computer Attacks
- Implement any of this new algorithms:
    - CRYSTALS-Dilithium
    - FALCON
    - SPHINCS+

---
# Section 9

## Types of Risk Assesment Frequencies
- Ad-Hoc
    - Usually done when there is a major change, a product, release, etc. to make sure any risks are being made transparent.
    - **These may be repeated.** 
- Recurring
    - Like it says.
    - Ethical hackers are usually working in this frequency.
- One-Time
    - Like it says.
    - Usually when there is a major change.
    - **These are not repeated.**
- Continuous
    - Ongoing monitoring, real-time analysis.

## Objectives of Risk Identification
- Recovery Time Objective (RTO)
    - Max time to allow for recovery.
- Recovery Point Objective (RPO)
    - Max amount of data loss in time.
- Mean Time to Repair (MTTR)
    - Average time to repair a system.
- Mean Time Between Failures (MTBF)
    - Average time *between* failures.

## Risk Register (Log)
- The documentation for identified risks and how they would behave, and if there are any ways to fix them.\
It contains the following:
    - Risk Description
    - Risk Impact
    - Risk Likelihood
    - Risk Outcome
    - Risk Level
    - Cost

- Risk Appetite
    - Shows how much your comapny would want to tackle an issue.
    - The amount of residual risk a company would accept.
    - The following types are as listed:
        - Expansionary
            - More likely to take a risk.
        - Conservative
            - Less likely to take a risk.
        - Neutral
            - Balance between risk and return.

## Key Risk Indicators (KRIs)
- Helps see the risk level, by utilizing predictive metrics.
> Good to be transparent with stakeholders

- Risk Owner
    - The person (or group) responsible for managing risks.

## Key Components of Quantitative Risk Analysis
- Single Loss Expectancy (SLE)
    - How much (in money) would be lost in an event.
- Annualized Rate of Occurence (ARO)
    - The expected frequency of a threat to occur in a year.
- Annualized Loss Expectancy (ALE)
    - Expected annual loss from a risk.
> This is like **SLE and ARO** together. 
- Exposure Factor (EF)
    - How much loss happened in an event
> Usually displayed like this:
> - 0% (no loss)
> - 100% (total loss)
> - HQ Flooding = 70% lost assets
> - EF = 70%

## Risk Sharing (When they want to make you liable for financial issues)
- Companies usually shift the burden of liability of asset loss to an insurance company.
- Another method is the **Contract Indemity Clause**, which would have the contractor liable for it (not the company owner).
    - The contactor would have to be smart to not be liable for any upcoming issues.

## Exception (How business can use data without consent)
- Under specific circumstances, companies are exempt from some data-collecting issues.

## Risk Monitoring
- Residual Risk
    - Acceptance measures on the first risk
- Control Risk
    - Measuring how security measures have list their effectiveness over time.

---
# Section 10
- Managed Service Provider: the groups that handle certain IT services on behalf of a company
- When signing a contract, make sure you have the right audit clause (inspect and allowed to penetration test).
- Independent assesment: Having a third-party validate your service provider.

## Selecting a Vendor
- When selecting a vendor, you must consider **due dilegence**, as they would have to understand all the parts of your company:
    - Financial Stability
    - Operational History
    - Client Testimonials
    - On-the-ground Practices

- Vendor Questionaires:
    - The documents you give out to the vendor to answer in detail about avrious aspects
    - A questionaire might include the following:
        - Data Redundancy Measures
        - Security Protocols
        - Uptime Guarantees
        - Disaster Recovery Plans

- Rules of Engagement: Dictates the terms of interaction between the comapny and its vendors, including but not limited to:
    - Communication protocols
    - Data sharing policies
    - Negotiation boundaries

## The Different Types of Contracts
- Basic Contract
- Service-Level Agreement (SLA)
    - Would be specific to what the service have.
- Memorandum of Agreement (MOA)
    - Would outline who is responsible for each thing.
- Memorandum of Understanding (MOU)
    - A more broad "understanding" for any future collaborations.
- Master Service Agreement (MSA)
    - A "blanket" (Master) agreement that covers the general terms of agreement
- Statement of Work (SOW)
    - It would specifiy the specific details of the work that would be performed.
- Non-Disclosure Agreement (NDA)
- Business Partnership Agreement (BPA)
    - Would define who owns what IP and show does what when companies work together.

---
# Section 11

## Governance
The strategy of having certain leadership, structures, and process styles that aligns with the company's objectives.
- To put it simply it's the rules that a company must follow to keep their identitiy or to comply with.

### Analyzing Governance Structure
- Boards
    - Usually contains the board of directors and those elected to oversee.
- Committees
    - The committees are the subgroups of the board of directors, each specializing in something.
- Government Entities
    - They are the ones with the legal BS, companies must follow these laws and regulations.
- Centralized Structures
    - They are the ones who make decisions in the topmost level of governance.
- Decentralized Structures
    - They distribute the decision-making to various people in the company.
> Choosing between a centralized and decentralized structure depends on the company size.

## Different Types of Policies
The policies are strict rules companies need to follow, and here are some examples of common policies.
- Acceptable Use Policy (AUP)
    - Do's and dont's for people accessing IT systems and resources. It's in the name.
- Information Security Policies
    - Should outline how any important information would be protected from external and internal movement, especially its threat potential.
    - An Info-Sec should consider the following:
        - Data Classification
        - Access Control
        - Encryption
        - Physical Security
- Business Continuity
    - How the company would *continue* if there were to be a disruption.
- Disaster Recovery
    - How the company would *recover* if there were to be a major disaster.
- Incident Response
    - The plan to handle any incident.
    - Could talk about who is notified, what basic procedures to take, and what potential problems could look like.
- Software Development Lifecycle (SDLC)
- Change Management
    - A plan to have any changes done in a timely manner to avoid any issues by the time a product gets released or after the fact and how to do in an orderly fashion.

## The Different Types of Access Control **Standards**
- Discretionary Access Control (DAC)
- Mandatory Access Control (MAC)
- Role-Based Access Control (RBAC)

These standards could cover the least privilege and seperation of duties.

## Enumeration
- Indentifying and counting devices and other assets, and see what is connected to the internet, that stauts, and more.

## Mobile Device Management (Similar to Enumeration)
- This make sure that any handheld devices have the latest updates and security patches.
- Things can be remotely installed if necessary.

---
# Section 12

## Asset Disposal
- When getting ready to dispose a recycle a device, procedures must be taken.
    - One of them is called **Special Public 800-88** or "Guidelines for Media Sanitization.

While we know we can overwrite data with random data many times (this takes time), there is something called **Secure Erase**, but there is a better technique called **Cryptographic Erase**.
- Cryptographic erase deletes the encryption keys.

## What Happens When a Company Changes a Workflow?
The Change Advisory Board would plan out the change, the following people are in the board:
- Change Owner: The one who wants to change a certain workflow.
- Stakeholder: The one who is interested in the change.

## Process of Applying Change
You should know some of the expected procedures. but there is a specfic term for one of them:
- Standard Operating Procedure (SOP): Step-by-step instructions.

---
# Section 14

## To Update and Keep Server Uptime
- Use the concept of **load balancing** to have multiple workloads set up on different parts.
    - That way you can do maintenance and all that.
- **Clustering** can also help, having multiple computers working as a single system, a **cluster** of computers.
    - If one or a few fails, you know you still have some up.
- Have multiple backup power sources.
- A **domain controller** is a sever that responds to security requests.

## Redundant Site Considerations
- Hot Sites
- Cold Sites
- Warm Sites
- Geographic Dispersion
- Virtual Sites
- Platform Diversity

## Resilience and Recovery Testing
- Tabletop Exercises
- Failover Techniques
- Simulation
- Parallel Processing

## Creating Data Redundancy
**RAID**, or Redundant Array of Independent Disks, are the multiple hard drives that are recognized in a single device.\
Here are the popular RAIDs:
- RAID 0: Provides data striping for performance.
    - Should be used for performance, but it might have more faults.
- RAID 1: Mirrors data to two hard drives.
    - Tolerates more faults than RAID 0.
- RAID 5: Stripes data with **parity**. (Like pairs that share data)
    - Requires 3 HDs.
    - Can recreate data on time of failure.
- RAID 6: Data striping like RAID 5, but it has two pieces of parity.
- RAID 10: Combines with RAID 1 and RAID 0, **mirrored in a striped setup.**

What the resistances mean:
- **Failure-resistance:** using redundant storage to mitigate faults.
    - RAID 1 | RAID 10
- **Fault-tolerant:** failure can happen, but it would still work.
    - RAID 1 | RAID 5 | RAID 6 | RAID 10
- Disaster-tolerant: Protects data from disaster.

## Capacity Planning
Ensure you have enough of each, or optimize workflows.
- People
- Technology
- Infrastructure
- Process

## What to Consider For Data Centers
- Surges
    - Small unexpected voltage increases.
- Spikes
    - Usually caused by short circuits.
- Sags
    - Small unexpected voltage **decreases**. 
- Undervoltage events
    - As it says, it usually occurs for longer.
- Full power loss events

## Ways to Mitigate Issues in Data Centers
- Line Conditioners
    - Handles the minor undervoltage/overvoltage conditions.
- Uninterruptible Power Supply (UPS)
    - Provide emergency power when the power goes out.
- Generator
    - Converts mechanical energy into electrical energy for use in an external circuit.
- Power Distribution Center (PDC)
    - Central hub where power is received and distributed around systems.
- Propane Generators
    - One of the best ways to keep power for hours or even days for systems.

- You should look at your company's RPO (Recovery Point Objective) policy when performing backups.

## Continuity of Operations
- Business Continuity Plan (BCP)
- Disaster Recover Plan (DRP)

## Redundant Site
There are different type of continuity plans:
- Hot Site
    - Fully equipped backup site.
    - **For servers.**
- Warm Site
    - Partial
- Cold Site
    - No equipment (but could be used)
- Mobile Site
    - Site with portable units to provide for recovery.

## The Types of Recovery Tests
- Tabletop Exercise:
    - **Discussing the problem** and how it would occur.
- Failover Test
    - Having an alternative to your systems/data at all times.
- Simulation
    - **Computer simulation.** Or a recreation of a companys network for pen testing purposes.
- Parallel Processing
    - Replicates data to seconday systems.

---
# Section 15
All about cloud solutions.

Some popular solutions when virtualizing are: 
- Docker
- Kubernetes
- Red Hat OpenShift

Some vulnerabilities to consider are:
- In transit
- Resource reuse (if the VM has logic for this, it can be exploited).
- Virtualization sprawl: The starting of VMs in a network without permission.

## Serverless Consideration
While serverless is great, you would have to "lock in" to using that service only.

## Microservices
- The structure model of a service that compartementalizes each app to small parts.
- It's not like everything is working under one huge codebase.

## Software Defined Networking (SDN)
Allows you configure your network to improve performance and monitoring.

The application and network layer of the code is abstracted, and separated into three parts:
- Data Plane: Handles packets based on protocols
- Control Plane: Decides on how the traffic is sent
- Application Plane: Where network applications are on the side for any other tasks. 

## Infrastrcuture as Code (IaC)
A nerdy way to manager your server infrastrucutre by witing in code.

You can write you infrasture code in markup languages like:
- JSON
- YAML
- HashiCorp Configuration Language (HCL)

This can avoid the **Snowflake** symptom! This maintains configuration consistency.

Can also make it easy to change anyhting that is requested like for compliance for example.

## Ways to Secure ICS and SCADA Systems
Think giant factories or power plants.

## Industrial Control Systems (ICS)
System to control industrial processes from simple to complex.\
It can be controlled with the following:
    - Distributed Control Systems (DCS)
    - Programmable Logic Controllers (PLCs)

## Supervisory Control and Data Acquisition (SCADA)
A *type* of ICS for industrial sites and their processes specifically that are geographically dispersed (around the world).
- Electric Power Generation
- Transmission
- Distribution Systems
- Water Treatment
- Oil and Gas Monitoring Systems

## Proctecting Embedded Devices
You can use **wrappers** to show the entry/exit points of data, nothing else.

---
# Section 16
Security Infrastructure.

## Different Firewall Types
- Web Application Firewalls
- Unified Threat Management Systems
- Next Generation Firewalls

## Different Detection Systems
- Network Instrusion Detection System
- **Host-based IDS (HIDS)**: Shares sus server connection data from a single server or endpoint
- **Wireless IDS (WIDS)**
Detects DoS attacks

These detection systems use **signature-based** and **anomaly-based** detection systems.

## Network Appliance: Collection of Pre-Installed Software
Designed to provide specific networking services.
- Load Balancers: Distribute traffic among multiple servers
    - **Application Deliver Controller (ADC)**: is a more advanced version of this
    - Some common functions are:
        - SSL Termination
        - HTTP Compression
        - Content Caching
> As you can imagine, this makes it so a system is highly available.
- Proxy Servers: The intermediary between a client and server.
    - Content Caching
    - Request Filtering
    - Login Management
- **Sensors:** Analyzes traffic and data flow for certain activities.
- **Jump Servers**
    - Jump boxes restrict direct access to a server
    - It is also a **centralized** system, so nodecentralized segment creates any new attack vector.

## Securing Open Ports
You can limit who connects to a port based on the MAC Address on network switches.
> This operates at Layer 2 of the OSI model. (Link)

- Switches have intelligence to prevent collisions on the network.
- Switches are more secure than hubs.
- All the MAC Address are stored in the Content Adressable Memory (CAM) Table:
    - Attackers can use MAC flooding, which can cause a randomized MAC overflow.
    - Enable port security or MAC filtering on switch ports to avoid this issue.
- Persistent (Sticky) MAC Learning: "Learns" and associates MAC address with certain interfaces.
- **MAC spoofing** can be done, but to by pass this, consider:

### 802.1x Authentication
The protocols:
- RADIUS
- TACACS+ (Cisco Propietary)

The supplicant requests access to the network, the device where it connects to (Network Switch, Wireless Access Point, VPN Concentrator), and the authentication server finally authenticates it.
    
### Extensible Authentication Protocol:
**All have EAP-\* in front.**
- MD5: uses simple passwords and handshake authentication. One-way.
- TLS: Digital certificate installed on both client and server.
- TTLS: Requires certificate on server, but not client. One-way.
- FAST: Credential instead of certificate between devices
- PEAP: Supports mutual authentication and the Microsoft Active Directory databses to authenticate a password from a client.
- LEAP: Cisco propietary EAP.

## Securing Network Communications
- Site-to-Site VPN: Connection between two networks from one location into the LAN you want.
- Client-to-Site VPN: Connects individual devices directly to the network.
    - Full Tunnel: Maximizes security encrypting all traffic.
    - Split Network: less secure because this has an encrypted and unencrypted internet path.
- Clientless VPN: Browser-based VPN tunnel without you needing to set it up, plug and play.
> Your browser uses this.
- Transport Layer Security (TLS): A protocol that provides encryption for secure connections.
- Transmission Control Protocol (TCP): Used by TLS to establish a secure connection.
- Datagram Transport Layer Security (DTLS): UDP-based version of TLS protocol (same security principle)

>
> Write notes for Sections 17, 18, 19
>

---
# Section 20
Hardening.

## Always Use Secure Port Alternatives
- HTTP (80) - HTTPS (443)
- SMTP (25) - SMTPS (587 || 465)
- Close as many ports as possible, usually these are open by default:
    - SSH (22)
    - Telnet (23) [Close this]
    - HTTP (80) [Close this]
    - HTTPS (443)

## Solution to Restrict Multiple Apps
Once should create a **Secure Baseline Image** that includes all the essential apoplications and configurations that everyone needs.

- **Allowlists** are also created to allows certain applications.
    - **Blocklists** are less secure.

## Trusted Operating System (TOS)
- Integrity-178B: POSIX-based operating systems for embedded systems.
    - Usually put in military aircraft or even some commercial vehicles.

- Evaluation Assurance Level (EAL) 6
    - Based on standards set by **Common Criteria for Information Technology Security Evaluation**
    - Rated on the following scale when tested:
        - EAL 1 - Lowest
        - EAL 7 - Highest
    - Most OS like Windows, Mac, Linux are at a EAL 4 level.

- Mandatory Access Control (MAC): Access permissions set by sysadmins.
    - SELinux: Implementation of MAC for any Linux distro.
    - Trusted Solaris: OS with MAC, detailed system audits and process compartmentalization

> A trusted OS works through microkernels to minimize attack to the main trusted base, thus reduing its attack surface.


## Updates and Patches
- Hotfixes are software patches that solve a security issue that can be deployed immediately.
- Updates are only new features.
- Service Packs are a collection of hotfixes since the release of the OS.

- It's always recommended to have a test environment to test patches to see if everything works the same in your environment.

## Patch Management
- You might want to use Microsoft Endpoint Configuration Management, or buy a third-party tool that can manage patches.
- Your company should not use the default Update tools, and you'll want to receive patches and test them and apply it yourself in the organization.
- **Patch Ring**: Test patches with multiple computers over time, like 10, 50, 100, 1000, so that way you have less support if something goes wrong the first time.
- You can use Linux package managers to update multiple systems.

## Firmware Management
- You should have the most up to date firmware on network connected devices.
- For Cisco devices, they have a manager called the UCS Manager, that can update your firmware over a network.

## Group Policies
- Password requirements
- Account lockout policies
- Software restrictions
- Application restrictions

In a corporate environment, **Security Template** are very common, and they are usually presets that can be loaded in one go for multiple computers.
> They are usally created with an image of the computer.

- **Baselining**: Measure changes in computers in a network, check to see what is *normal* (like in certain activities).

**Local Group Policy Editor** is the Windows group policy management system that can handle the afforementioned tasks.

## SELinux
- Discretionary Access Control (DAC): each object has a list of entities that are allowed to access it.
- Usually included in CentOS and Red Hat Enterprise Linux.

- "Contexts" in SELinux are categorized as the following:
    - User levels: 
        - Unconfied_u (All users)
        - User_u (Unpriviledged users)
        - Sysadmin_u (System admins)
        - Root (Root user)
    - Role
    - Type: grouped byt smilar security requirements.
    - Level (Optional): Sensitivity elvels of certain directories.

## Levels of Encrytion
From highest to lowest (not bad options, depends on use case):
- Database: SQL Server Transparent Data Encryption (TDE)
- Disk: Bitlocker
- Partition/Volume: VeraCrypt
- Record: Indvidual records in a databse would be encrypted.
- File: GNU Privacy Gard (GPG) cryptographic privacy for data.

---
# Section 21 
Security Techniques.

## Wireless Infrastructure Security
Be aware of where you place you wireless access points.
- If you have to put an external Wi-Fi point, use a unidirectional antenna.

If you need to have a huge area where you need to place multiple access points, use this:
- Extended Service Set (ESS) Configuration:
    - Multiple wireless access points that work together to unify the connection in a large building or facility.

## Common Types of Interferences
- Co-Channel: There are two access points with the same channel in the same area.
- Adjacent Channel: When a third access point is too close to two access points, it doesn't matter if they have different channels.

## Channel Types for Different GHz Bands
- Channel 1, Channel 6, and Channel 11

## Planning for a Wireless Network Solution
A **Site Survey** is essentially the idea of planning how the wireless network will physically work in your building.

You would consider the following properties:
- Wireless Coverage
- Data Rates
- Network Capacity
- Roaming Capability
- Quality of Service Levels

While planning the physcial network, you'll want to have a visual of your current setup.
You will use something called a **heatmap** to visualize the wireless coverage, and see how strong the connection is around certain areas.

## Being Aware of Security Settings
With the least privledge principle and being aware of encryption standards, you should set up your wireless access points correctly.
- WEP (Wired Equivalent Privacy, 1999): Uses encryption keys (64-bit/128-bit), can be compromised with network traffic analysis and the 24-bit initialization vector. 
- WPA (Wi-Fi Protected Access, 2003): Temporary WEP solution, generated new 128-bit keys for each packet using TKIP, unlike the static WEP.
    - It was still susceptible to cryptographic attacks.
- WPA2 (Wi-Fi Protected Access 2): Replaces TKIP with the AWS protocol, and also uses CCMP for stronger encryption.
    - **Counter Cipher Mode with Block Chaining Message Authentication Code Protocol (CCMP)**
    - Also uses Message Integrity Code (MIC) for integrity checking.

> Eventually the **KRACK attack in 2016** showed that WPA2 was *vulnerable*.

- WPA3 (Wi-Fi Protected Access 3): Uses AES GCMP, introduced new features such as SAE, Enhanced Open, updated cryptographic protocols, and management protection frames.
    - Simultaneous Authentication of Equals (SAE): Key establishment protocol to guard against offline dictionary attacks. **Four-way handshake** where even a hacker who has teh credentials can;t try to guess the password.
    - Enhanced Open (OWE): Provides authentication over Wi-Fi networks even when there is no authentication.
    - Galois Counter Mode Protocol (GCMP) 128-bit AWS for personal networks, 192-bit AES for enterprise networks.

## Authentication Protocols
AAA is considered the main method of authentication used, however the different systems enhance or improve the granular control over AAA.

- AAA (Authentication Authorication and Accounting Protocol): Centrializes user authentication to permit only authorized users to access the network.
    - RADIUS (Remote Authentication Dial-In User Service): Client/server offering AAA services for network use.

> **RADIUS** is the main method of having secure network access, by confirming who each user is in the network.

- TACACS+ (Terminal Access Controller Access-Control System Plus): Seperates the functions of AAA for more granular control.
- EAP (Extension Authentication Protocol): Supports multiple authentication methods.
- PEAP (Protected Extensible Authentication Protocol): Secures EAP within an encrypted and authenticated TLS tunnel.
    - Certificate (server/client)
- EAP-TLLS (Extensible Authentication Protocol-Tunneled Transpaort Layer Security): Authentication protocol that extends TLS support across multiple platforms.
    - Certificate (server)
- EAP-FAST (Extensible Authentication Protocol-Flexible Authentication via Secure Tunneling): Cisco developed secure re-authentication while roaming a network without having to fully authenticate each time.
    - Developed to replace LEAP due to vulns.

## Application Security
When developing an application, you must always keep these concepts in mind.
- Input Validation: You don't want people to use buffer overflows to write custom code on input.
- Secure Cookies: transmitted over HTTPS when the client connects to the server.
    - Persistent cookies (local) for session verification is not the right way to go for security, they should always be newly generated.

> This is where XSS attacks can occur.

- Static Code Analysis
- Dynamic Code Analysis
- Code Signing
- Sandboxing

## Network Access Control
This is the concept of scanning devices, where they are placed in a network safeguard or sandbox-like environment, and then allows them to connect.

Different Agents:
- Persistent Agent: Software installed on a device requesting network access.
- Non-Persistent Agent: When a web portal is used to login.

NAC can be Software/Hardware, and one of the most common standards in port-based network access control is IEEE Standard 802.1x.

## Email Security
There are many protocol for email security, here is the list:
- DKIM (DomainKeys Identified Mail): checks if the sender is real and if the content was tampered with.
- SPF (Sender Policy Framework): Email authentication method that precents forging sender addresses.
- DMARC (Domain-based Message Authentication, Reporting, & Conformance): Prevents email spoofing.
- Email Gateway Protocol: A server where it serves as an entry and exit point for emails.
    - This is so it can check within this gatway before its sent to someone, and to do policy enforcement, encryption/decryption, etc.
- Spam Filtering: Filtering can work in many ways:
    - Bayesian filtering
    - DNS-based sinkhole list

## Endpoint Detection and Response
This the concept of security tools that monitor endpoint and network events.
It continously monitors and gathers information.

It usually collects this type of information:
- System Processes
- Changes to the Registry
- Memory Usage
- Patterns of Network Traffic

When it detects something it goes to some processes like:
- FIM (File Intergrity Monitoring): Validates the integrity of the OS and application software files.
- XDR (Extended Detection and Response): Incorporates multiple protection technologies into one to improeve the detection accuracy and simply the incident response process.

## User Behavior Analytics
Machine learning alogs gets the users data as they study how they are use their computer.
Like for example, the time when they usually log in.

## When to Select Secure Protocols
Just choose the best encryption/port/protocols, it's that simple.
Of course, you have to make the decision based on what you are willing to give up or what is also efficient on your resources. But most protocols should run well on systems.

However, there are different types of ports you need to consider:
- Well-known Ports: Used by the system (0-1023).
- Registered Ports: Used by software applications (1024-49151).
- Dynamic/Private Ports: Client-side connections (49152-65535).

Only open the most secure ports, block everything at first and only open a few.

The different *transport methods* usually refer to the ways data move on the network, like TCP or UDP.
- TCP delivers data without error.
- UDP does not guarantee delivery of data.
    - Usually great for real-time communications like video streaming.

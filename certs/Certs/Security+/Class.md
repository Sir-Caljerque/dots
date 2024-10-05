# Message Authentication Codes
- Main application of cryptographic hash functions is *message authentication codes (MAC)*
- Provides authentication
	- *Hash* functions are generally faster
- MAC = Hash(Key || Message) (Original proposal)
**How does the recipient verify authenticity without RSA?**
- By calculating MAC' and comparing it to MAC

### **DOES NOT PROVIDE NON-REPUDIATION** ###

## Hash as Authentication Protocol

Alice ----hello, r_a---->Bob
      <----H(K||r_a), r_b----
	  ----H(K||r_b)---->

# Key management
real-world communication between 2 systemds is done by *temporary* symmetric keys callsed session keys
- they are refreshed whenever session ends/starts
 **Upsides**
- lifetime too short for cryptoanalisys
- if key is compromised, only that ONE session is compromised

## How are keys distributed/shared?
- How do 2 parties agree to a session key?
	- *A* can select key and physically deliver to *B*
	- *Third party* can select and deliver to *A* and *B*
	- if *A & B* have communicated previously, they can use previous keys to encrypt a new key
	- if *A&B* have secure communications with *C*, *C* can relay key between *A & B*
- Other options
	- Via *Public key* system AKA Key Distribution Center (KDC)
	- Diffie-Hellman Key exchange

### KDC
Each user shared a longer-living master key with KDC, andd KDC handles sharing keys between A and B

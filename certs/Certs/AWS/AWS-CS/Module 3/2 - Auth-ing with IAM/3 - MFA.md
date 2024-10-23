- Adds an extra layer of protection on top of your use name an password
	- Users prompted for an auth code
	- Can be hardware based or a virtual device
- Activate MFA for:
	- AWS management Console users
	- AWS API users (requires temp security credentials)
- Examples of MFA devices
	- Security keys (YubiKey, Gemalto)
	- Apps (Google Authenticator, Authy)
	- Hardware devices

Multi-factor authentication (MFA) is a best practice that adds an extra layer of protection on top of your user name and password. MFA requires two or more factors to achieve authentication. Factors include the following:
- Something you know, such as a password
- Something you have, such as a cryptographic token
- Something you are, such as your fingerprint

By default, MFA is not activated.

When MFA is enabled and a user signs in to the AWS Management Console, they are prompted for their user name and password (the first factor, what they know). They are then prompted for an authentication response from their AWS MFA device (the second factor—what they have). Examples of MFA devices include security key devices, such as YubiKey and Gemalto devices, and virtual devices, such as Google Authenticator or Authy.

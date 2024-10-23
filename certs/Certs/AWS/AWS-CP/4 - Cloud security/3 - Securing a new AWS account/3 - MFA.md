# Step 2: Enable multi-factor authentication (MFA).
- Require MFA for your account root user and for all IAM users.
- You can also use MFA to control access to AWS service APIs.
- Options for retrieving the MFA token –
    - Virtual MFA-compliant applications:
        - Google Authenticator.
        - AuthyAuthenticator (Windows phone app).
    - U2F security key devices:
        - For example, YubiKey.
    - Hardware MFA options:
        - Key fob or display card offered by Gemalto.

Another recommended step for securing a new AWS account is to require multi-factor authentication (MFA) for the account root user login and for all other IAM user logins. You can also use MFA to control programmatic access.For details, see Configuring MFA-Protected API Access at https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_configure-api-require.html.

You have a few options for retrieving the MFA token that is needed to log in when MFA is enabled. Options include virtual MFA-compliant applications (such as Google Authenticator and AuthyAuthenticator), U2F security key devices, and hardware MFA options that provide a key fob or display card.

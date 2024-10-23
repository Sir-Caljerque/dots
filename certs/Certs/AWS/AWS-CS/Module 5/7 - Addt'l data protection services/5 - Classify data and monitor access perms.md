- Macie scans and evaluates buckets objects for policy violations and sensitive data
- Macie generates findings in real-time for the following:
    - Buckets that are public
    - Buckets that are not encrypted
    - Buckets that are shared or replicated

Macie can help you classify your sensitive and business-critical data at the S3 bucket level. Macie scans all supported objects found and evaluates them for sensitive data that meets the job criteria. You can further configure these sensitive data discovery jobs; for example, only classify PDF documents or classify all objects except those with a particular prefix.

By default, Macie will continuously monitor all buckets in any account in which it is enabled. Findings are generated for any bucket that is public, not encrypted, or shared or replicated with AWS accounts outside of a customer’s organization. These findings are reported in near-real time.

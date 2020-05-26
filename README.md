## Basic question

#### What is KMS , and KMS can handle which problems?

> AWS Key Management Service (AWS KMS) is a managed service that makes it easy for you to create and control customer master keys (CMKs), the encryption keys used to encrypt your data.

#### The approaches to use KMS.

> AWS KMS is integrated with most other AWS services that encrypt your data. AWS KMS is also integrated with AWS CloudTrail to log use of your CMKs for auditing, regulatory, and compliance needs.

#### You can do which action by using KMS?

- Create, and view symmetric and asymmetric CMKs, and edit their properties.
- Enable and disable CMKs
- Tag your CMKs for easier identification, categorizing, and tracking use and costs
- Create, delete, list, and update aliases, which are friendly names for your CMKs
- Encrypt, decrypt, and re-encrypt data with symmetric or asymmetric CMKs
- ...

## Scripts
- Create Key
  ```shell
  ./auto/create-key.sh <description>
  ```
- Encrypt plain text
  ```shell
  ./auto/encrypt.sh <key-id> <plain-text>
  ```
- Decrypt ciphertext
  ```shell
  ./auto/decrypt.sh <ciphertext>
  ```
- Use shush to encrypt or decrypt
  
  **Install shush:**
  
  Mac - run `brew install shush`.
  
  Windows/Linux - see [Shush Installation](https://github.com/realestate-com-au/shush#installation)

  - Encrypt
    ```shell
    ./auto/shush.sh encrypt <key-id> <plain-text>
    ```
  - Decrypt
    ```shell
    ./auto/shush.sh decrypt <ciphertext>
    ```
  The result will be stored in `secret.encrypted` and `secret.decrypted` file.

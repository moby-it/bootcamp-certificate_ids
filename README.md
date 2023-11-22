# Moby IT Certificates ID Generator

Moby IT's Bootcamp certificate IDs are encrypted and commited to this repository. Each candidate that has completed the Bootcamp should have a file
under the `certificate_ids` folder named by their name.
This repository also includes the scripts to generate the certificate id with guide on how to do that (below)[#how-to-create-your-certificate]

## How to create your certificate

- Clone this repository
- Run `./encrypt.sh "<Your-Name>" "<Certificate-Completion-Date>" "<candidate-password>" > certificates_ids/<your-name>`
  - the above command:
    - runs the `encrypt.sh` script with 3 arguments - name, certificate completion date and candidate password
    - after that it redirects the output (>) to a file under the `certificates_ids` folder.
  - <your-name> must be a valid filename. Don't forget to escape possible <space> characters!
- Create a pull request that has your certificate ID!


The **candidate-password** is a password which will be needed to decrypt your id. This password essentially is your key to opening the
certificate id's contents. Each certificate id's contents after decrypted include the name and completion date of the candidate.

### Example 

`./encrypt.sh "George Spanos" "17-8-2023" "somesecretpassword" > certificates/george_spanos`

## How to decrypt

- Inside the certificates folder there's the certificate ID for each candidate
- you can decrypt a certificate by running `./decrypt.sh "$(cat <certificate-file-path>)" <candidate-password>`

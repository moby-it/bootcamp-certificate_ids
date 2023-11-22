#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 certificate_id passkey"
  exit 1
fi
# Read the encrypted value
encrypted_value=$1
passkey=$2
descrypted= echo $encrypted_value | openssl enc -pbkdf2 -a -d -salt -pass pass:"$passkey" 
echo -n $descrypted

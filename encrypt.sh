#! /bin/bash
# "Stefanos Palaiochoritis" "22-11-2023" "pokemon"
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 name date passkey"
  exit 1
fi
name=$1
date=$2
passkey=$3

unique_value="${name}_${date}"
# Encrypt the unique value with the passkey
encrypted_value=$(echo -n "$unique_value" | openssl enc -pbkdf2 -a -salt -pass pass:"$passkey") 

echo $encrypted_value

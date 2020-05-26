#!/bin/bash

cd $(dirname $0)/..

if [ $1 == 'encrypt' ]
then
  KEY_ID=$2
  PLAIN_TEXT=$3
  AWS_DEFAULT_REGION=ap-southeast-1
  shush encrypt ${KEY_ID} ${PLAIN_TEXT} > secret.encrypted
else
  CIPHERTEXT=$2
  AWS_DEFAULT_REGION=ap-southeast-1 shush decrypt --print-key < secret.encrypted
  AWS_DEFAULT_REGION=ap-southeast-1 shush decrypt ${CIPHERTEXT} > secret.decrypted
fi

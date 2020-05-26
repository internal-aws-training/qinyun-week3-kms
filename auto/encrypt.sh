#!/bin/bash

KEY_ID=$1
PLAIN_TEXT=$2

aws kms encrypt \
  --key-id ${KEY_ID} \
  --plaintext ${PLAIN_TEXT} \
  --output text \
  --query CiphertextBlob
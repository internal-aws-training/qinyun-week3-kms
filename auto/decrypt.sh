#!/bin/bash

CIPHER_TEXT=$1

aws kms decrypt \
  --ciphertext-blob fileb://<(echo -n "${CIPHER_TEXT}" | base64 --decode) \
  --output text \
  --query Plaintext | base64 --decode

#!/bin/bash

DESCRIPTION=$1

aws kms create-key --description ${DESCRIPTION} \
  --key-usage ENCRYPT_DECRYPT \
  --output text \
  --query KeyMetadata.Arn

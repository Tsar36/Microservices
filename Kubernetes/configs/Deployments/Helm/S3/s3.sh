#!/bin/bash

# Create a Chart repository using AWS S3

set -e

# create a random string
RANDOM_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | tr '[:upper:]' '[:lower:]' | head -n 1)

# it's important to set the AWS_REGION if not set. Change the default
DEFAULT_REGION="us-east-2"
AWS_REGION="${AWS_REGION:-${DEFAULT_REGION}}"

# Create S3 bucket
if [ "AWS_REGION" == "us-east-2" ] ; then
  aws s3api create-bucket --bucket helm-${RANDOM_STRING}
else
  aws s3api create-bucket --bucket helm-${RANDOM_STRING} --region $AWS_REGION --create-bucket-configuration LocationConstraint=${AWS_REGION}
fi

# Install helm s3 plugin
helm plugin install https://github.com/hypnoglow/helm-s3.git

# Initialize s3 bucket
helm s3 init s3://helm-${RANDOM_STRING}/charts

# add repository to helm
helm repo add my-charts s3://helm-${RANDOM_STRING}/charts
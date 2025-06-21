#!/bin/bash

pushd terraform-s3-cloudfront
# Initialize Terraform
 terraform init

# This step checks for syntax errors
 terraform  fmt

# Validate the Terraform configuration
 terraform validate

# Plan the Terraform deployment
 terraform plan

# Apply the Terraform configuration
 terraform apply --auto-approve

 BUCKET_NAME=$(terraform output -raw s3_bucket_name)
 CLOUD_FRONT_DISTRIBUTION_ID=$(terraform output -raw cloudfront_distribution_id)
popd

# copy the static website files to the S3 bucket
aws s3 sync schoolstatic-main/ s3://$BUCKET_NAME

# Invalidate the CloudFront cache to ensure the latest files are served
aws cloudfront create-invalidation --distribution-id $CLOUD_FRONT_DISTRIBUTION_ID --paths "/*"

# infracost breakdown --path .
#!/bin/bash

pushd terraform-s3-cloudfront
# destroy the infrastructure
 terraform destroy --auto-approve
 popd
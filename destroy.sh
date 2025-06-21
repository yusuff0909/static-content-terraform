# #!/bin/bash

# pushd terraform-s3-cloudfront
# # destroy the infrastructure
#  terraform destroy --auto-approve
#  popd


#!/bin/bash

pushd terraform-s3-cloudfront

# Get the bucket name from Terraform output
# BUCKET_NAME=$(terraform output -raw s3_bucket_name)

# Empty the S3 bucket before destroying resources
aws s3 rm s3://$BUCKET_NAME --recursive

# destroy the infrastructure
terraform destroy --auto-approve

popd
# Terraform S3 and CloudFront Setup

This project sets up an Amazon S3 bucket and a CloudFront distribution using Terraform. The S3 bucket serves as the origin for the CloudFront distribution, which provides a secure and efficient way to deliver content over the web.

## Project Structure

```
terraform-s3-cloudfront
├── main.tf
├── var.tf
├── outputs.tf
├── README.md
```

## Prerequisites

- An AWS account
- Terraform installed on your local machine
- A domain name with an SSL certificate already issued (for HTTPS)

## Configuration Files

### main.tf

This file contains the main configuration for creating the S3 bucket and CloudFront distribution. It includes:

- S3 bucket resource definition
- Bucket policy to allow access from CloudFront
- CloudFront distribution configuration with the S3 bucket as the origin
- Default root object set to `index.html`
- HTTP to HTTPS redirection

### var.tf

This file defines the input variables for the Terraform configuration. It includes:

- `bucket_name`: The name of the S3 bucket
- `domain_name`: The domain name for the CloudFront distribution
- `certificate_arn`: The ARN of the SSL certificate for HTTPS

### outputs.tf

This file specifies the outputs of the Terraform configuration, including:

- The URL of the CloudFront distribution for easy access after deployment

## Deployment Instructions

1. Clone the repository or download the project files.
2. Navigate to the project directory.
3. Update the `var.tf` file with your specific values for the S3 bucket name, domain name, and certificate ARN.
4. Initialize Terraform:
   ```
   terraform init
   ```
5. Plan the deployment:
   ```
   terraform plan
   ```
6. Apply the configuration:
   ```
   terraform apply
   ```
7. After the deployment is complete, note the CloudFront distribution URL from the output.

## Notes

- Ensure that your AWS credentials are configured properly.
- The S3 bucket will be created in the default region unless specified otherwise.
- Make sure to manage your AWS resources to avoid unnecessary charges.
- How to find your hosted zone ID:
   In the AWS Console, go to Route 53 → Hosted zones → Click your domain → Copy the Hosted Zone ID from the list.
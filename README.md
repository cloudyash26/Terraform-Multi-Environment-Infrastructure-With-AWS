## Terraform Multi-Environment AWS Infrastructure

This project demonstrates how to create a multi-environment infrastructure in AWS using Terraform, featuring dev, staging, and prod environments with S3 buckets, DynamoDB tables, and EC2 instances.

## Features
- Multi-environment setup (dev, staging, prod)
- S3 buckets, DynamoDB tables, and EC2 instances in each environment
- Terraform modules for organized and efficient code
- Default VPC, key pairs, and security groups configured for SSH traffic

## Getting Started
1. Clone the repository using `git clone`
2. Configure AWS credentials: `aws configure`
3. Initialize Terraform: `terraform init`
4. Review the plan: `terraform plan`
5. Apply the configuration: `terraform apply`

## Environments
- Dev: 1 EC2 instance (t2.micro), 1 S3 bucket, 1 DynamoDB table
- Staging: 2 EC2 instances (t2.medium), 1 S3 bucket, 1 DynamoDB table
- Prod: 3 EC2 instances (t2.large), 1 S3 bucket, 1 DynamoDB table

## Requirements
- AWS account with necessary credentials
- AWS CLI installed and configured


### Multi-Environment Infrastructure using default vpc: 

<img width="872" height="804" alt="diagram-export-8-31-2025-2_51_44-PM" src="https://github.com/user-attachments/assets/beb0426e-8c82-4f2f-9b39-adca47041786" />

### Results:

<img width="1920" height="801" alt="Screenshot 2025-08-31 151614" src="https://github.com/user-attachments/assets/1941fb73-ffb5-42f5-afe3-b90f8c788a34" />

<img width="1920" height="789" alt="Screenshot 2025-08-31 151930" src="https://github.com/user-attachments/assets/6ad1cd1e-8cf0-4b47-acd8-3679c96386bd" />

<img width="1920" height="800" alt="Screenshot 2025-08-31 151847" src="https://github.com/user-attachments/assets/39715d1e-455e-4899-b4f2-ce3d415f40c0" />








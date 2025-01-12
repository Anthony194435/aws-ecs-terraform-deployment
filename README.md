# terraform-module
# Dynamic Website on AWS ECS with Terraform

This project demonstrates the deployment of a dynamic website on Amazon ECS (Elastic Container Service) using Terraform. It provides a secure and scalable infrastructure with automated provisioning capabilities.

# Overview 

This project utilizes Terraform to provision essential infrastructure components for a dynamic website:
-  VPC and Subnets: Creates a Virtual Private Cloud (VPC) with public and private subnets across different Availability Zones (AZs) for high availability and fault tolerance.
- Security Groups: Defines security groups to manage inbound and outbound traffic for ECS services and the Application Load Balancer (ALB).
- ECS (Elastic Container Service): Manages containerized workloads running the application code. Configuration includes task definition, execution role, and service.
- ALB (Application Load Balancer): Distributes incoming traffic across multiple containers, enhancing scalability and application availability.
- Route 53: Manages the website's DNS, ensuring the domain name points to the ALB.
- AWS ACM (Certificate Manager): Provides SSL certificate creation and management for secure communication between clients and the ALB.

# Prerequisites 

- An AWS Account
- AWS CLI installed and configured with access credentials
- Terraform installed

# Configuration Files

- This project uses a modular approach with the following key files:

- backend.tf: Configures the S3 backend for Terraform state files, enabling secure collaboration and management of infrastructure.
- variables.tf: Defines all variables used throughout the Terraform configurations.
- main.tf: The main Terraform configuration file that orchestrates various modules.


# Modules

- The project leverages pre-built Terraform modules for efficient infrastructure creation:

- VPC: Sets up the VPC with dedicated subnets.
- ALB: Creates the Application Load Balancer.
- ECS: Provisions the ECS cluster, task definition, and service.
- Route53: Manages the DNS record for the website.
- Security Groups: Defines security groups for traffic control.
- (Optional) NAT Gateway (if applicable for your specific network architecture)

# Usage

- `terraform init`
- `terraform fmt`
- `terraform validate`
- `terraform plan`
- `terraform apply --auto-approve`

- This will create the infrastructure resources as defined in the Terraform code.

# Backend Configuration

The project utilizes an S3 bucket as the Terraform state backend, allowing secure team collaboration and management of infrastructure updates. Additionally, a DynamoDB table is used for state locking to prevent concurrent operations on the same state file.
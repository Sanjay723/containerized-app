# Production-Ready Containerized Application on AWS ECS Fargate

An automated Infrastructure as Code (IaC) and CI/CD deployment pipeline for running a containerized Node.js application on AWS using Terraform, Amazon ECS (Fargate), Amazon ECR, and Application Load Balancer (ALB).

## Architecture Overview

- **Cloud Provider**: AWS
- **Infrastructure as Code**: Terraform
- **Container Orchestration**: Amazon ECS (Fargate Serverless)
- **Container Registry**: Amazon Elastic Container Registry (ECR)
- **Networking & Traffic**: VPC (Multi-AZ Public Subnets, Internet Gateway, Route Tables) & Application Load Balancer (ALB)
- **Security**: AWS IAM Roles & ECS Execution Roles
- **CI/CD Pipeline**: GitHub Actions

## Project Structure

```text
.
├── .github/
│   └── workflows/
│       └── ci.yml               # GitHub Actions CI/CD pipeline definition
├── app/
│   ├── index.js                 # Node.js sample application
│   └── package.json
├── terraform/
│   ├── main.tf                  # Provider configuration
│   ├── variables.tf             # Input variables
│   ├── vpc.tf                   # VPC, Subnets, and Networking
│   ├── ecr.tf                   # ECR Repository setup
│   ├── ecs.tf                   # ECS Cluster, Task Definition & Fargate Service
│   ├── alb.tf                   # Application Load Balancer & Target Groups
│   ├── iam.tf                   # IAM Execution Roles and Policies
│   └── outputs.tf               # Terraform outputs (ALB DNS, ECR URL)
├── Dockerfile                   # Multi-stage / lightweight container build
└── README.md
```

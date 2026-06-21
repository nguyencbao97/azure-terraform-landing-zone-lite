# Interview Notes

Use these notes to explain the project clearly in interviews.

## 30-second explanation

I built an Azure infrastructure-as-code lab using Terraform. It provisions a small landing zone with a resource group, virtual network, public and private subnets, network security groups, a storage account, Key Vault, and Log Analytics. I structured the project with reusable modules and added GitHub Actions to check Terraform formatting and validation.

For Phase 2, I added an optional application workload with Azure App Service, Application Insights, managed identity, Key Vault RBAC, and diagnostic settings to show a more realistic cloud engineering deployment.

## Why I built it

I built it as a personal project because I currently work in an enterprise environment where I support Azure and Microsoft 365 cloud operations, but I cannot freely deploy infrastructure-as-code into production. This lab helps me practice Terraform and Azure design patterns in a safe personal environment.

## What skills this project shows

- Terraform project structure
- Azure resource group organization
- Azure virtual networks and subnets
- Network Security Groups
- Secure Storage Account settings
- Key Vault deployment
- Azure RBAC pattern
- Managed identity pattern
- Application Insights monitoring
- Diagnostic settings to Log Analytics
- GitHub Actions validation
- Cost-conscious cloud design

## How to explain the application module

The application module is optional. I made it controlled by the `deploy_application` variable so the base landing zone can stay low cost, while still showing how I would add a real application workload.

When enabled, the module deploys a Linux Web App, an App Service Plan, Application Insights, and diagnostic settings. It also creates a system-assigned managed identity for the Web App and grants that identity the Key Vault Secrets User role at the Key Vault scope. This demonstrates the common cloud pattern of using managed identities instead of storing credentials in code.

## How to explain GitHub Actions

The GitHub Actions workflow runs Terraform formatting and validation checks. It does not deploy to Azure automatically because I intentionally avoided putting Azure credentials into this public portfolio project. This keeps the repository safer while still showing CI/CD awareness.

## If asked whether this was done at work

Say:

> This was a personal lab project. I built it outside of work because my production environment is controlled and I cannot freely test Terraform deployments there. The project is based on cloud engineering concepts I use or support professionally, but the code itself is my personal lab.

## If asked what you would improve next

Good answers:

- Add private endpoints for Storage Account and Key Vault
- Add Azure Policy examples
- Add budget alerts
- Add remote state using Azure Storage
- Add pull request checks for Terraform plan
- Add AKS or container deployment later
- Add a small application deployment pipeline

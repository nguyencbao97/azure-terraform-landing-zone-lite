# Azure Terraform Landing Zone Lite

A personal cloud engineering project that provisions a small, resume-friendly Azure environment using Terraform.

This project is intentionally **cost-conscious**. It does not deploy virtual machines, Kubernetes, databases, or always-running compute. It focuses on core Azure cloud engineering concepts: resource organization, networking, security, monitoring, naming, tagging, and infrastructure-as-code structure.

## What this project builds

- Azure Resource Group
- Virtual Network
- Public subnet
- Private subnet
- Network Security Groups for both subnets
- Storage Account with secure defaults
- Key Vault using Azure RBAC authorization
- Log Analytics Workspace
- Consistent tagging for environment, owner, and project

## Architecture

```text
Resource Group
│
├── Virtual Network: 10.20.0.0/16
│   ├── Public Subnet:  10.20.1.0/24
│   │   └── Public NSG
│   └── Private Subnet: 10.20.2.0/24
│       └── Private NSG
│
├── Storage Account
├── Key Vault
└── Log Analytics Workspace
```

## Why this project matters

This project demonstrates the cloud engineering skills employers look for:

- Terraform infrastructure-as-code
- Azure networking fundamentals
- Resource naming and tagging
- Secure storage configuration
- Key Vault deployment
- Log Analytics deployment
- Basic module structure
- GitHub repository documentation
- GitHub Actions validation workflow

## Tools used

- Terraform
- AzureRM Terraform provider
- Azure CLI
- GitHub
- GitHub Actions

## Folder structure

```text
azure-terraform-landing-zone-lite/
├── .github/workflows/
│   └── terraform-checks.yml
├── docs/
│   └── interview-notes.md
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── security/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── backend.tf.example
├── main.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars.example
├── variables.tf
├── versions.tf
└── README.md
```

## Prerequisites

1. An Azure subscription
2. Terraform installed
3. Azure CLI installed
4. A GitHub account

## How to deploy locally

### 1. Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/azure-terraform-landing-zone-lite.git
cd azure-terraform-landing-zone-lite
```

### 2. Login to Azure

```bash
az login
az account show
```

If you have multiple Azure subscriptions, select the right one:

```bash
az account set --subscription "YOUR-SUBSCRIPTION-ID"
```

Also put the same subscription ID in `terraform.tfvars` because the AzureRM provider version used in this project expects a subscription ID.

```bash
# terraform.tfvars
subscription_id = "YOUR-SUBSCRIPTION-ID"
```

### 3. Create your variables file

Copy the example file:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Then edit `terraform.tfvars`, replace the placeholder `subscription_id`, and change the other values if needed.

### 4. Initialize Terraform

```bash
terraform init
```

### 5. Format and validate

```bash
terraform fmt -recursive
terraform validate
```

### 6. Preview the deployment

```bash
terraform plan
```

### 7. Deploy

```bash
terraform apply
```

Type `yes` when Terraform asks for confirmation.

### 8. Destroy when finished

To avoid unnecessary Azure charges, destroy the resources when you are done testing:

```bash
terraform destroy
```

## GitHub Actions

The included workflow runs:

- `terraform fmt -check -recursive`
- `terraform init -backend=false`
- `terraform validate`

This is safe for a public personal project because it does not require Azure credentials and does not deploy resources automatically.

## Remote state note

The file `backend.tf.example` shows how remote state could be configured using Azure Storage. It is provided as an example only. Do not commit real backend secrets or Terraform state files to GitHub.

## Resume bullet you can use

> Built a personal Azure infrastructure-as-code lab using Terraform to provision resource groups, virtual networks, subnets, network security groups, storage, Key Vault, and Log Analytics with reusable modules and GitHub Actions validation.

## Interview explanation

> I built this personal lab to strengthen my cloud engineering and Terraform skills because I cannot freely deploy infrastructure-as-code in my production work environment. The project uses Terraform modules to deploy a small Azure landing zone with networking, security, storage, Key Vault, monitoring, and standard tags. I also added a GitHub Actions workflow for formatting and validation checks.

# Interview Notes

Use these notes to explain the project clearly in interviews.

## 30-second explanation

I built an Azure infrastructure-as-code lab using Terraform. It provisions a small landing zone with a resource group, virtual network, public and private subnets, network security groups, a storage account, Key Vault, and Log Analytics. I structured the project with reusable modules and added GitHub Actions to check Terraform formatting and validation.

## Why I built it

I built it as a personal project because I currently work in an enterprise environment where I support Azure and Microsoft 365 cloud operations, but I cannot freely deploy infrastructure-as-code into production. This lab lets me practice Terraform safely in my own Azure subscription.

## What skills it demonstrates

- Azure infrastructure provisioning
- Terraform syntax and workflow
- Resource group and tagging standards
- Azure virtual networking
- Subnets and NSG associations
- Secure storage configuration
- Key Vault deployment
- Log Analytics workspace deployment
- Terraform modules
- GitHub Actions CI checks

## Important Terraform concepts used

### Providers

The project uses the AzureRM provider to manage Azure resources and the Random provider to generate a unique suffix for globally unique resource names.

### Variables

Variables make the project reusable. Instead of hardcoding the environment, region, owner, and subnet ranges, they are defined in `variables.tf` and customized in `terraform.tfvars`.

### Locals

Locals are used to create consistent names and common tags that are reused across resources.

### Modules

The project separates network and security resources into modules:

- `modules/network` creates the VNet, subnets, NSGs, and NSG associations.
- `modules/security` creates the storage account, Key Vault, and Log Analytics workspace.

### Outputs

Outputs show important values after deployment, such as resource group name, VNet name, subnet IDs, storage account name, Key Vault name, and Log Analytics workspace name.

### State

Terraform state tracks the resources Terraform manages. This project includes `backend.tf.example` to show how remote state could be configured using Azure Storage, but the default setup uses local state for easier personal lab deployment.

## Commands I used

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```

## What I would improve next

- Add private endpoints for Key Vault and Storage
- Add Azure Policy assignments
- Add diagnostics settings to send logs to Log Analytics
- Add a small App Service or VM behind the network
- Add Terraform remote state in Azure Storage
- Add a deployment workflow using GitHub Actions with OIDC authentication to Azure

## Resume bullet

Built a personal Azure infrastructure-as-code lab using Terraform to provision resource groups, virtual networks, subnets, network security groups, storage, Key Vault, and Log Analytics with reusable modules and GitHub Actions validation.

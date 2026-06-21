# How It Works

This project uses Terraform to define Azure infrastructure as code.

## Root module

The root module creates the Azure Resource Group and calls the reusable modules:

- `network`
- `security`
- `application`

The application module is optional and is controlled by this variable:

```hcl
deploy_application = false
```

Set it to `true` only when you want to test the App Service workload.

## Network module

The network module creates:

- Virtual Network
- Public subnet
- Private subnet
- Network Security Group for public subnet
- Network Security Group for private subnet
- NSG associations

The goal is to show Azure networking fundamentals without making the lab too expensive.

## Security module

The security module creates:

- Storage Account with secure defaults
- Key Vault using RBAC authorization
- Log Analytics Workspace

This module represents the common security and monitoring foundation of a small Azure environment.

## Application module

The application module creates:

- Linux App Service Plan
- Linux Web App
- Application Insights
- System-assigned managed identity
- Key Vault RBAC role assignment
- Diagnostic settings to Log Analytics

This shows how a cloud engineer connects compute, identity, monitoring, and security together.

## GitHub Actions

The GitHub Actions workflow runs Terraform checks on every push to `main` and on pull requests:

```bash
terraform fmt -check -recursive
terraform init -backend=false
terraform validate
```

It does not run `terraform apply`, so Azure credentials are not required in GitHub.

## Cost note

The base landing zone is designed to be cost-conscious. If you enable the optional application workload, review Azure pricing for the selected App Service SKU and destroy the resources when finished testing.

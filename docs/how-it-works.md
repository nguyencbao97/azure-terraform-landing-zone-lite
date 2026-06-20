# How This Project Works

This file explains the project in plain English.

## 1. Terraform reads the configuration

Terraform reads all `.tf` files in the root folder and modules folder.

The root folder defines:

- Provider configuration
- Variables
- Common tags
- Resource group
- Calls to the network and security modules
- Outputs

## 2. Terraform authenticates to Azure

When you run `az login`, Azure CLI stores your login session. The AzureRM provider can use that session when Terraform runs locally.

## 3. Terraform creates the resource group

The resource group is the container for all resources in this project.

## 4. Terraform calls the network module

The network module creates:

- Virtual network
- Public subnet
- Private subnet
- NSG for public subnet
- NSG for private subnet
- NSG associations

## 5. Terraform calls the security module

The security module creates:

- Storage account
- Key Vault
- Log Analytics workspace

## 6. Terraform stores state

Terraform creates a state file that maps your Terraform code to the real Azure resources. The `.gitignore` file prevents state files from being committed to GitHub.

## 7. GitHub Actions validates the code

When the project is uploaded to GitHub, the workflow checks:

- Whether Terraform files are formatted correctly
- Whether Terraform can initialize without a backend
- Whether the configuration is valid

The workflow does not deploy resources automatically. That keeps the project safer for a public GitHub portfolio.

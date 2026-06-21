\# How It Works



This project uses Terraform to define a small Azure environment.



\## Root Module



The main Terraform files create the resource group and call the reusable modules.



The project has modules for:



\* Network

\* Security

\* Application



The application part is optional. It is controlled by the deploy\_application variable.



I set deploy\_application to false by default so the project can stay simple and avoid unnecessary Azure costs.



\## Network Module



The network module creates:



\* Virtual network

\* Public subnet

\* Private subnet

\* Network security group for the public subnet

\* Network security group for the private subnet

\* NSG associations



I kept the networking simple so I could practice the basics without making the lab too expensive.



\## Security Module



The security module creates:



\* Storage account

\* Key Vault

\* Log Analytics workspace



These resources helped me practice basic cloud security and monitoring concepts.



\## Application Module



The application module is optional. When enabled, it creates:



\* Linux App Service Plan

\* Linux Web App

\* Managed identity

\* Application Insights

\* Key Vault RBAC role assignment

\* Diagnostic settings to Log Analytics



I added this part so the project shows more than just networking. It shows how an application workload can connect with monitoring, identity, and Key Vault access.



\## GitHub Actions



The GitHub Actions workflow checks the Terraform code by running:



\* terraform fmt

\* terraform init

\* terraform validate



This helps confirm the Terraform files are formatted correctly and valid before I make more changes.




\# Interview Notes



\## How I Would Explain This Project



I built this as a personal Azure Terraform lab because I wanted more hands-on practice with infrastructure-as-code. At work, I support Azure and Microsoft 365, but I cannot freely test Terraform deployments in production. This project gave me a safe way to practice Terraform, Azure networking, security resources, monitoring, managed identity, RBAC, and GitHub Actions validation.



\## Why I Used Terraform



Terraform lets me define infrastructure as code instead of manually creating everything in the Azure portal. This makes the environment easier to review, reuse, and change.



\## Why I Used Modules



I used modules to keep the project organized. The network resources, security resources, and optional application resources are separated so the project is easier to understand.



\## Why App Service Is Optional



I made App Service optional because I wanted the lab to stay low-cost. The main project can still validate without deploying the application workload.



\## Why I Used Key Vault



Key Vault is commonly used to store secrets, keys, and certificates. In this lab, I used it to practice how Key Vault fits into an Azure security design.



\## Why I Used Managed Identity



Managed identity helps Azure resources access other Azure services without storing passwords or secrets in code.



\## Why I Used Log Analytics and Application Insights



Log Analytics is used for centralized logging and monitoring. Application Insights is used to monitor the web app when the optional app workload is enabled.



\## Why I Used GitHub Actions



GitHub Actions runs Terraform checks when I push changes. This helps catch formatting or validation issues before the code is shared.




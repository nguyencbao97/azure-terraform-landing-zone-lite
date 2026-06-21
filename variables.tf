variable "project_name" {
  description = "Short project name used for resource naming. Use lowercase letters and numbers only."
  type        = string
  default     = "cloudlab"

  validation {
    condition     = can(regex("^[a-z0-9]{3,12}$", var.project_name))
    error_message = "project_name must be 3-12 characters and only contain lowercase letters and numbers."
  }
}

variable "environment" {
  description = "Environment name used for tagging and naming."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment must be one of: dev, test, prod."
  }
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastus"
}

variable "owner" {
  description = "Owner tag for the resources."
  type        = string
  default     = "bao-nguyen"
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "public_subnet_prefix" {
  description = "CIDR block for the public subnet."
  type        = list(string)
  default     = ["10.20.1.0/24"]
}

variable "private_subnet_prefix" {
  description = "CIDR block for the private subnet."
  type        = list(string)
  default     = ["10.20.2.0/24"]
}

variable "deploy_application" {
  description = "Set to true to deploy the optional App Service, Application Insights, managed identity, and monitoring resources."
  type        = bool
  default     = false
}

variable "app_service_sku_name" {
  description = "SKU name for the optional App Service Plan. F1 is cost-conscious for lab use where available."
  type        = string
  default     = "F1"
}

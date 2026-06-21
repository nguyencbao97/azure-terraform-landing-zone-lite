variable "name_prefix" {
  description = "Prefix used for naming application resources."
  type        = string
}

variable "location" {
  description = "Azure region for application resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "key_vault_id" {
  description = "ID of the Key Vault used for application secret access."
  type        = string
}

variable "key_vault_name" {
  description = "Name of the Key Vault used by the application."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics Workspace for monitoring."
  type        = string
}

variable "app_service_sku_name" {
  description = "SKU name for the App Service Plan. F1 is cost-conscious for lab use where available."
  type        = string
  default     = "F1"
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
}

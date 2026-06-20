output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  description = "Name of the virtual network."
  value       = module.network.virtual_network_name
}

output "public_subnet_id" {
  description = "ID of the public subnet."
  value       = module.network.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet."
  value       = module.network.private_subnet_id
}

output "storage_account_name" {
  description = "Name of the storage account."
  value       = module.security.storage_account_name
}

output "key_vault_name" {
  description = "Name of the Key Vault."
  value       = module.security.key_vault_name
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace."
  value       = module.security.log_analytics_workspace_name
}

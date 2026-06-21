output "web_app_name" {
  description = "Name of the Linux Web App."
  value       = azurerm_linux_web_app.main.name
}

output "web_app_default_hostname" {
  description = "Default hostname of the Linux Web App."
  value       = azurerm_linux_web_app.main.default_hostname
}

output "app_service_plan_name" {
  description = "Name of the App Service Plan."
  value       = azurerm_service_plan.main.name
}

output "application_insights_name" {
  description = "Name of Application Insights."
  value       = azurerm_application_insights.main.name
}

output "web_app_managed_identity_principal_id" {
  description = "Principal ID of the Web App system-assigned managed identity."
  value       = azurerm_linux_web_app.main.identity[0].principal_id
}

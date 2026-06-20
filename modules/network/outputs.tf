output "virtual_network_name" {
  description = "Name of the virtual network."
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet."
  value       = azurerm_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the private subnet."
  value       = azurerm_subnet.private.id
}

output "public_nsg_name" {
  description = "Name of the public subnet NSG."
  value       = azurerm_network_security_group.public.name
}

output "private_nsg_name" {
  description = "Name of the private subnet NSG."
  value       = azurerm_network_security_group.private.name
}

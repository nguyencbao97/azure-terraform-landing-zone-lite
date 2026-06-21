locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Owner       = var.owner
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${local.name_prefix}"
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source = "./modules/network"

  name_prefix           = local.name_prefix
  location              = azurerm_resource_group.main.location
  resource_group_name   = azurerm_resource_group.main.name
  address_space         = var.address_space
  public_subnet_prefix  = var.public_subnet_prefix
  private_subnet_prefix = var.private_subnet_prefix
  tags                  = local.common_tags
}

module "security" {
  source = "./modules/security"

  name_prefix         = local.name_prefix
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = local.common_tags
}

module "application" {
  count  = var.deploy_application ? 1 : 0
  source = "./modules/application"

  name_prefix                = local.name_prefix
  location                   = azurerm_resource_group.main.location
  resource_group_name        = azurerm_resource_group.main.name
  key_vault_id               = module.security.key_vault_id
  key_vault_name             = module.security.key_vault_name
  log_analytics_workspace_id = module.security.log_analytics_workspace_id
  app_service_sku_name       = var.app_service_sku_name
  tags                       = local.common_tags
}

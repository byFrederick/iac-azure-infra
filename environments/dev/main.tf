resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "../../modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "acr" {
  source = "../../modules/acr"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  for_each = var.acr_registries
  
  name = each.value.name
  sku = each.value.sku
  zone_redundancy_enabled = each.value.zone_redundancy_enabled
  retention_policy_in_days = each.value.retention_policy_in_days
  admin_enabled = each.value.admin_enabled
}
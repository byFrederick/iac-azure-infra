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
  aks_subnet_name = var.aks_subnet_name
  aks_subnet_address_prefixes = var.aks_subnet_address_prefixes
}
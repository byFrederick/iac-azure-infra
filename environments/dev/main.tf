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

module "aks" {
  source = "../../modules/aks"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  name = var.aks_name
  dns_prefix = var.aks_dns_prefix
  default_node_pool_name = var.aks_default_node_pool_name
  default_node_pool_node_count = var.aks_default_node_pool_node_count
  default_node_pool_vm_size = var.aks_default_node_pool_vm_size
  default_node_pool_os_sku = var.aks_default_node_pool_os_sku
  default_node_pool_vnet_subnet_id = module.network.subnet_id
  network_plugin = var.aks_network_plugin
  network_plugin_mode = var.aks_network_plugin_mode
  network_policy = var.aks_network_policy
}
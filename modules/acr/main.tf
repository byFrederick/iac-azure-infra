resource "azurerm_container_registry" "acr" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = var.sku
  zone_redundancy_enabled  = var.zone_redundancy_enabled
  retention_policy_in_days = var.retention_policy_in_days
  admin_enabled            = var.admin_enabled
}
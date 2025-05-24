output "rg_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "aks_vnet_name" {
  description = "The name of the Virtual Network"
  value       = module.network.aks_vnet_name
}

output "aks_subnet_name" {
  description = "The name of the subnet for AKS"
  value       = module.network.aks_subnet_name
}

output "acr_names" {
  description = "Map of ACR registry names by key"
  value       = { for k, m in module.acr : k => m.acr_name }
}

output "acr_login_servers" {
  description = "Map of ACR login server endpoints by key"
  value       = { for k, m in module.acr : k => m.acr_login_server }
}

output "acr_admin_usernames" {
  description = "Map of ACR admin usernames by key"
  value       = { for k, m in module.acr : k => m.admin_username }
}

output "acr_admin_passwords" {
  description = "Map of ACR admin passwords by key"
  value       = { for k, m in module.acr : k => m.admin_password }
  sensitive   = true
}
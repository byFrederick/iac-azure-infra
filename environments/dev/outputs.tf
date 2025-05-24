output "rg_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.rg.location
}

output "aks_vnet_name" {
  description = "The name of the Virtual Network"
  value       = module.network.vnet_name
}

output "aks_subnet_name" {
  description = "The name of the subnet for AKS"
  value       = module.network.subnet_name
}

output "acr_names" {
  description = "Map of ACR registry names by key"
  value       = { for key, value in module.acr : key => value.name }
}

output "acr_login_servers" {
  description = "Map of ACR login server endpoints by key"
  value       = { for key, value in module.acr : key => value.login_server }
}

output "acr_admin_usernames" {
  description = "Map of ACR admin usernames by key"
  value       = { for key, value in module.acr : key => value.admin_username }
}

output "acr_admin_passwords" {
  description = "Map of ACR admin passwords by key"
  value       = { for key, value in module.acr : key => value.admin_password }
  sensitive   = true
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = module.aks.name
}

output "aks_cluster_version" {
  description = "AKS cluster version"
  value       = module.aks.version
}

output "aks_node_resource_group" {
  description = "The name of the node resource group"
  value       = module.aks.node_resource_group
}
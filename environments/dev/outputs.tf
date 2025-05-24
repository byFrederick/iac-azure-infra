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
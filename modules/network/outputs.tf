output "aks_vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.aks_vnet.name
}

output "aks_subnet_name" {
  description = "The name of the subnet for AKS"
  value       = azurerm_subnet.aks_subnet.name
}
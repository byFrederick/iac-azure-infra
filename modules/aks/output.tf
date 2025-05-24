output "name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "version" {
  description = "AKS cluster version"
  value       = azurerm_kubernetes_cluster.aks.kubernetes_version
}

output "node_resource_group" {
  description = "The name of the node resource group"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}

# This is to be use by others provider, I won't print it out in the console
output "kube_config" {
  description = "The kube config of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config
}

output "kubelet_identity" {
  description = "Object ID of the AKS Kubelet managed identity"
  value       = azurerm_kubernetes_cluster.aks.kubelet_identity[0].client_id
}

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

output "aks_kubeconfig" {
  description = "Raw Kubeconfig"
  value       = module.aks.kube_config_raw
  sensitive   = true
}

output "aks_node_resource_group" {
  description = "The name of the node resource group"
  value       = module.aks.node_resource_group
}

output "nginx_ingress_controller_release_name" {
  description = "Helm release name"
  value       = module.nginx_ingress_controller.release_name
}

output "nginx_ingress_controller_namespace" {
  description = "Namespace where the ingress controller was installed"
  value       = module.nginx_ingress_controller.namespace
}

output "nginx_ingress_controller_chart" {
  description = "The chart identifier used"
  value       = module.nginx_ingress_controller.chart
}

output "nginx_ingress_controller_chart_version" {
  description = "Chart version deployed"
  value       = module.nginx_ingress_controller.chart_version
}

output "nginx_ingress_controller_app_version" {
  description = "App version"
  value       = module.nginx_ingress_controller.app_version
}

output "nginx_ingress_controller_status" {
  description = "Helm release status"
  value       = module.nginx_ingress_controller.status
}
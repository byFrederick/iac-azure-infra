resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source                  = "../../modules/network"
  resource_group_name     = azurerm_resource_group.rg.name
  location                = azurerm_resource_group.rg.location
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "acr" {
  source              = "../../modules/acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  for_each = var.acr_registries

  name                     = each.value.name
  sku                      = each.value.sku
  zone_redundancy_enabled  = each.value.zone_redundancy_enabled
  retention_policy_in_days = each.value.retention_policy_in_days
  admin_enabled            = each.value.admin_enabled
}

module "aks" {
  source                           = "../../modules/aks"
  resource_group_name              = azurerm_resource_group.rg.name
  location                         = azurerm_resource_group.rg.location
  name                             = var.aks_name
  dns_prefix                       = var.aks_dns_prefix
  kubernetes_version               = var.aks_kubernetes_version
  default_node_pool_name           = var.aks_default_node_pool_name
  default_node_pool_node_count     = var.aks_default_node_pool_node_count
  default_node_pool_vm_size        = var.aks_default_node_pool_vm_size
  default_node_pool_os_sku         = var.aks_default_node_pool_os_sku
  default_node_pool_vnet_subnet_id = module.network.subnet_id
  network_plugin                   = var.aks_network_plugin
  network_plugin_mode              = var.aks_network_plugin_mode
  network_policy                   = var.aks_network_policy
}

# Attach registries created to the AKS cluster
module "identity" {
  source = "../../modules/identity"
  acr_attachments = {
    # Iterate ACR module to each registry values
    for key, value in module.acr :
    key => {
      principal_id = module.aks.kubelet_identity[0].object_id
      scope        = value.id
    }
  }
}

# Deployment of nginx ingress controller using Helm
module "nginx_ingress_controller" {
  source           = "../../modules/nginx_ingress_controller"
  release_name     = var.nginx_ingress_controller_release_name
  namespace        = var.nginx_ingress_controller_namespace
  create_namespace = var.nginx_ingress_controller_create_namespace
  chart_repo       = var.nginx_ingress_controller_chart_repo
  chart_name       = var.nginx_ingress_controller_chart_name
  chart_version    = var.nginx_ingress_controller_chart_version

  # Helm values file for nginx ingress controller chart
  values = [file("${path.module}/nginx_ingress_values.yaml")]
}
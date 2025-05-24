resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  # System Node Pool used primarily for system components (coreDNS, metrics-server, etc.)
  default_node_pool {
    name           = var.default_node_pool_name
    node_count     = var.default_node_pool_node_count
    vm_size        = var.default_node_pool_vm_size
    os_sku         = var.default_node_pool_os_sku
    vnet_subnet_id = var.default_node_pool_vnet_subnet_id
  }

  network_profile {
    network_plugin = var.network_plugin
    network_plugin_mode = var.network_plugin_mode
    network_policy = var.network_policy
  }
  identity {
    type = "SystemAssigned"
  }
}
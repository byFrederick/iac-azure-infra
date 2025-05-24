variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "location" {
  type        = string
  description = "Azure Location"
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
  default     = "rg-aks-dev"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet-aks-dev"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space of the virtual network"
  default     = ["10.1.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet for AKS"
  default     = "subnet-aks-dev"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefix of the subnet for AKS"
  default     = ["10.1.1.0/24"]
}

variable "acr_registries" {
  type        = map(object({
    name                     = string
    sku                      = string
    zone_redundancy_enabled  = bool
    retention_policy_in_days = number
    admin_enabled            = bool
  }))
  description = "The container registries to deploy"
  default     = {
    primary_acr = {
      name = "acrdevprimary"
      sku = "Standard"
      zone_redundancy_enabled = false
      retention_policy_in_days = 0
      admin_enabled            = true
    }
    secondary_acr = {
      name = "acrdevsecondary"
      sku = "Standard"
      zone_redundancy_enabled = false
      retention_policy_in_days = 0
      admin_enabled            = true
    }
  }
}

variable "aks_name" {
  type        = string
  description = "The name of the AKS cluster"
  default     = "aks-dev"
}

variable "aks_dns_prefix" {
  type        = string
  description = "The DNS prefix of the AKS API server"
  default     = "aks-dev"
}

variable "aks_default_node_pool_name" {
  type        = string
  description = "The name of the default node pool"
  default     = "agentpool"
}

variable "aks_default_node_pool_node_count" {
  type        = number
  description = "The number of nodes in the default node pool"
  default     = 2
}

variable "aks_default_node_pool_vm_size" {
  type        = string
  description = "The size of the nodes in the default node pool"
  default     = "Standard_D2as_v4"
}

variable "aks_default_node_pool_os_sku" {
  type        = string
  description = "The OS SKU of the nodes in the default node pool"
  default     = "Ubuntu"
}

variable "aks_network_plugin" {
  type        = string
  description = "The network plugin to use for networking"
  default     = "azure"
}

variable "aks_network_plugin_mode" {
  type        = string
  description = "The network plugin mode used for building the Kubernetes network"
  default     = "overlay"
}

variable "aks_network_policy" {
  type        = string
  description = "network policy to be used with Azure CNI"
  default     = "calico"
}
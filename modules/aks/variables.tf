variable "name" {
  type        = string
  description = "The name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "The location of the AKS cluster"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "dns_prefix" {
  type        = string
  description = "The DNS prefix of the AKS cluster"
}

variable "default_node_pool_name" {
  type        = string
  description = "The name of the default node pool"
}

variable "default_node_pool_node_count" {
  type        = number
  description = "The number of nodes in the default node pool"
}

variable "default_node_pool_vm_size" {
  type        = string
  description = "The size of the nodes in the default node pool"
}

variable "default_node_pool_os_sku" {
  type        = string
  description = "The OS SKU of the nodes in the default node pool"
}

variable "default_node_pool_vnet_subnet_id" {
  type        = string
  description = "The subnet ID for the default node pool"
}

variable "network_plugin" {
  type        = string
  description = "The network plugin to use for networking"
}

variable "network_plugin_mode" {
  type        = string
  description = "The network plugin mode used for building the Kubernetes network"
}

variable "network_policy" {
  type       = string
  description = "network policy to be used with Azure CNI"
}
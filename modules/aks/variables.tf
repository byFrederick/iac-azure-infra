variable "name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "Location of the AKS cluster"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix of the AKS cluster"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernete version AKS will run"
}

variable "default_node_pool_name" {
  type        = string
  description = "Name of the default node pool"
}

variable "default_node_pool_node_count" {
  type        = number
  description = "Number of nodes in the default node pool"
}

variable "default_node_pool_vm_size" {
  type        = string
  description = "Size of the nodes in the default node pool"
}

variable "default_node_pool_os_sku" {
  type        = string
  description = "OS SKU of the nodes in the default node pool"
}

variable "default_node_pool_vnet_subnet_id" {
  type        = string
  description = "Subnet ID for the default node pool"
}

variable "network_plugin" {
  type        = string
  description = "Network plugin to use for networking"
}

variable "network_plugin_mode" {
  type        = string
  description = "Network plugin mode used for building the Kubernetes network"
}

variable "network_policy" {
  type       = string
  description = "network policy to be used with Azure CNI"
}
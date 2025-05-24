variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the VNet will be created"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet for AKS"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefix of the subnet for AKS"
}
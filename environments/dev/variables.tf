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
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_name" {
  type        = string
  description = "The name of the subnet for AKS"
  default     = "subnet-aks-dev"
}

variable "aks_subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefix of the subnet for AKS"
  default     = ["10.0.1.0/24"]
}

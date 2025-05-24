variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the VNet will be created"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources"
}

variable "name" {
  type        = string
  description = "The name of the container registry"
}

variable "sku" {
  type        = string
  description = "The SKU of the container registry"
}

variable "zone_redundancy_enabled" {
  type        = bool
  description = "Whether to enable zone redundancy for the container registry"
}

variable "retention_policy_in_days" {
  type        = number
  description = "The retention policy in days for the container registry"
}

variable "admin_enabled" {
  type        = bool
  description = "Whether to enable admin user for the container registry"
}
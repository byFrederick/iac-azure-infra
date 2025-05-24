output "acr_name" {
  description = "The name of the container registry"
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "The login server of the container registry"
  value       = azurerm_container_registry.acr.login_server
}

output "admin_username" {
  description = "Admin username (empty if disabled)"
  value       = var.admin_enabled ? azurerm_container_registry.acr.admin_username : ""
}

output "admin_password" {
  description = "Primary admin password (empty if disabled)"
  value       = var.admin_enabled ? azurerm_container_registry.acr.admin_password : ""
}
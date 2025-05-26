resource "azurerm_role_assignment" "acr_attachment" {
  for_each = var.acr_attachments

  principal_id         = each.value.principal_id
  role_definition_name = "AcrPull"
  scope                = each.value.scope
}
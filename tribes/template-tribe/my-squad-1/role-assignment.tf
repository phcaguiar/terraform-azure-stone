resource "azurerm_role_assignment" "abcde" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}

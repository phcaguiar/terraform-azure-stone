resource "azurerm_role_assignment" "isouza-dev" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}
resource "azurerm_role_assignment" "isouza-stg" {
  scope                = "${azurerm_resource_group.rg-stg.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}
resource "azurerm_role_assignment" "isouza-prd" {
  scope                = "${azurerm_resource_group.rg-prd.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}

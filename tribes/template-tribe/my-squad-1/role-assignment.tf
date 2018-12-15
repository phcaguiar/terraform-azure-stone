resource "azurerm_role_assignment" "isouza-dev" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader"
  principal_id         = "isouza@stone.com.br"
}
resource "azurerm_role_assignment" "isouza-stg" {
  scope                = "${azurerm_resource_group.rg-stg.id}"
  role_definition_name = "Reader"
  principal_id         = "isouza@stone.com.br"
}
resource "azurerm_role_assignment" "isouza-prd" {
  scope                = "${azurerm_resource_group.rg-prd.id}"
  role_definition_name = "Reader"
  principal_id         = "isouza@stone.com.br"
}
#

### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

resource "azurerm_role_assignment" "isouza-dev" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}

# Terraform resource to set staging environment azure resource group permissions

resource "azurerm_role_assignment" "isouza-stg" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
  principal_id         = "isouza@stone.com.br" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
}

# resource "azurerm_role_assignment" "assign-user-name-to-rg-mytribe-stg" {
#   scope                = "${azurerm_resource_group.rg-stg.id}"
#   role_definition_name = "" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
#   principal_id         = "" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
# }

# # Terraform resource to set production environment azure resource group permissions

# resource "azurerm_role_assignment" "assign-user-name-to-rg-mytribe-prd" {
#   scope                = "${azurerm_resource_group.rg-prd.id}"
#   role_definition_name = "" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
#   principal_id         = "" ## Run az ad user show --upn-or-object-id user.mail@mail.com.br --query objectId
# }

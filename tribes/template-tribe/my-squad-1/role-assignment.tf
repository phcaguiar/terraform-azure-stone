### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-dev" {
#   scope                = "${azurerm_resource_group.rg-dev.id}"
#   role_definition_name = "" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
#   principal_id         = "" ## Use user.name@mail.com.br
# }

# Terraform resource to set staging environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-stg" {
#   scope                = "${azurerm_resource_group.rg-stg.id}"
#   role_definition_name = "" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
#   principal_id         = "" ## Use user.name@mail.com.br
# }

# Terraform resource to set production environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-prd" {
#   scope                = "${azurerm_resource_group.rg-prd.id}"
#   role_definition_name = "" ## See in https://docs.microsoft.com/en-us/azure/role-based-access-control/
#   principal_id         = "" ## Use user.name@mail.com.br
# }

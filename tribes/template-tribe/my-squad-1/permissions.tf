### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-dev" {
#   scope                = "${azurerm_resource_group.rg-dev.id}"
#   role_definition_name or role_definition_id  = "" ## See the options in the repository documentation
#   principal_id         = "" ## Insert only one mail address
# }

# Terraform resource to set staging environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-stg" {
#   scope                = "${azurerm_resource_group.rg-stg.id}"
#   role_definition_name or role_definition_id  = "" ## See the options in the repository documentation
#   principal_id         = "" ## Insert only one mail address
# }

# Terraform resource to set production environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-prd" {
#   scope                = "${azurerm_resource_group.rg-prd.id}"
#   role_definition_name or role_definition_id  = "" ## See the options in the repository documentation
#   principal_id         = "" ## Insert only one mail address
# }

resource "azurerm_role_assignment" "newrg" {
  scope                = "${data.azurerm_resource_group.rg-prd-ec2.id}"
  role_definition_id   = "${data.azurerm_role_definition.CustomRoleContributorProd.id}" ## See the options in the repository documentation
  principal_id         = "$(principal.id)" ## Insert only one mail address
}

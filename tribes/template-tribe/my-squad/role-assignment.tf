### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

resource "azurerm_role_assignment" "assign-eduardo-assais-to-rg-financial-dev" {
  scope                = "${azurerm_resource_group.rg-dev.name}"
  role_definition_name = "Reader"
  principal_id         = "146709ad-f2ac-4df2-bfee-7d13cc5aee52"
}

# Terraform resource to set staging environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-stg" {
#   scope                = "${azurerm_resource_group.rg-stg.id}"
#   role_definition_name = ""
#   principal_id         = ""
# }

# # Terraform resource to set production environment azure resource group permissions

# resource "azurerm_role_assignment" "user-name-prd" {
#   scope                = "${azurerm_resource_group.rg-prd.id}"
#   role_definition_name = ""
#   principal_id         = ""
# }

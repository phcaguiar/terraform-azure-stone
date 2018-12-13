### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

resource "azurerm_role_assignment" "ra-dev-eduardo-assais" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "Reader"
  principal_id         = "129c90e0-7e14-4c4d-ae91-a3c527f7b951"
}

# Terraform resource to set staging environment azure resource group permissions

resource "azurerm_role_assignment" "ra-stg-eduardo-assais" {
  scope                = "${azurerm_resource_group.rg-stg.id}"
  role_definition_name = "Reader"
  principal_id         = "146709ad-f2ac-4df2-bfee-7d13cc5aee52"
}

# Terraform resource to set production environment azure resource group permissions

resource "azurerm_role_assignment" "ra-prd-isouza" {
  scope                = "${azurerm_resource_group.rg-prd.id}"
  role_definition_name = "Contributor"
  principal_id         = "146709ad-f2ac-4df2-bfee-7d13cc5aee52"
}
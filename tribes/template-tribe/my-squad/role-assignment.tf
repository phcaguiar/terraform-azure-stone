### Terraform scripts to set azure resource group permissions

# Terraform resource to set development environment azure resource group permissions

resource "azurerm_role_assignment" "ra-dev" {
  scope                = "${azurerm_resource_group.rg-dev.id}"
  role_definition_name = "PermissionType"
  principal_id         = "some-id-user"
}

# Terraform resource to set staging environment azure resource group permissions

resource "azurerm_role_assignment" "ra-stg" {
  scope                = "${azurerm_resource_group.rg-stg.id}"
  role_definition_name = "PermissionType"
  principal_id         = "some-id-user"
}

# Terraform resource to set production environment azure resource group permissions

resource "azurerm_role_assignment" "ra-prd" {
  scope                = "${azurerm_resource_group.rg-prd.id}"
  role_definition_name = "PermissionType"
  principal_id         = "some-id-user"
}
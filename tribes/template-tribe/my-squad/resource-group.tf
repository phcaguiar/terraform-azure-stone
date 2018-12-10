### Terraform scripts to create azure resource group

# Terraform resource to create development environment azure resource group

resource "azurerm_resource_group" "rg-dev" {
  name     = "${var.project-name}-dev"
  provider = "azurerm.nonprod"
  location = "${var.location}"
}

# Terraform resource to create staging environment azure resource group

resource "azurerm_resource_group" "rg-stg" {
  name     = "${var.project-name}-stg"
  provider = "azurerm.nonprod"
  location = "${var.location}"
}

# Terraform resource to create production environment azure resource group

resource "azurerm_resource_group" "rg-prd" {
  name     = "${var.project-name}-prd"
  provider = "azurerm.nonprod"
  location = "${var.location}"
}
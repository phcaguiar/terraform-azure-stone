### Terraform data source for subscriptions

# Production

data "azurerm_subscription" "prod" {
  provider = "azurerm.prod"
}

# Non-Production

data "azurerm_subscription" "nonprod" {
  provider = "azurerm.nonprod"
}

### Terraform data source for resource groups in development environment

# East US 2 Region

data "azurerm_resource_group" "rg-dev-ec2" {
  name      = "test-vsts-ci-dev-ec2"
  provider  = "azurerm.nonprod"
}

# Central US Region
data "azurerm_resource_group" "rg-dev-ce" {
  name      = "test-vsts-ci-dev-ce"
  provider  = "azurerm.nonprod"
}

### Terraform data source for resource groups in staging environment

# East US 2 Region

data "azurerm_resource_group" "rg-stg-ec2" {
  name      = "test-vsts-ci-stg-ec2"
  provider  = "azurerm.nonprod"
}

# Central US Region
data "azurerm_resource_group" "rg-stg-ce" {
  name      = "test-vsts-ci-stg-ce"
  provider  = "azurerm.nonprod"
}

### Terraform data source for resource groups

# East US 2 Region

data "azurerm_resource_group" "rg-prd-ec2" {
  name      = "test-vsts-ci-prd-ec2"
  provider  = "azurerm.prod"
}

# Central US Region
data "azurerm_resource_group" "rg-prd-ce" {
  name      = "test-vsts-ci-prd-ce"
  provider  = "azurerm.prod"
}

### Terraform data source for custom roles definition

## CustomRoleContributor

# Production

data "azurerm_role_definition" "CustomRoleContributorProd" {
  role_definition_id = "bfc46072-4684-11d6-cd53-0e76309393f1"
  scope              = "${data.azurerm_subscription.prod.id}"
}

# Non-Production

data "azurerm_role_definition" "CustomRoleContributorNonProd" {
  role_definition_id = "bfc46072-4684-11d6-cd53-0e76309393f1"
  scope              = "${data.azurerm_subscription.nonprod.id}"
}
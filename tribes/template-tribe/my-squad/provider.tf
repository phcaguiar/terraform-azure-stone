provider "azurerm" {
  alias  = "prod"
  subscription_id = "my-prod-azure-subscription-id"
}

provider "azurerm" {
  alias  = "nonprod"
  subscription_id = "my-nonprod-azure-subscription-id"
}
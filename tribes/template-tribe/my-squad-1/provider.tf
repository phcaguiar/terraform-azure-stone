provider "azurerm" {
  alias           = "prod"
  subscription_id = "ba5141a2-2132-4e5a-b88d-d61f5a175fbe"
}

provider "azurerm" {
  alias           = "nonprod"
  subscription_id = "ba5141a2-2132-4e5a-b88d-d61f5a175fbe"
}
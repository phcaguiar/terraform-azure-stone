terraform {
  backend "azurerm" {
    storage_account_name = "terraformazurestone"
    container_name       = "rg-tfstates"
    key                  = "other-squad.tfstate"
    arm_subscription_id  = "87d224fa-7526-478d-977c-d3b46e9aa5ce"
  }
}
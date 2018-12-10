terraform {
  backend "azurerm" {
    storage_account_name = "terraformazurestone"
    container_name       = "rg-tfstates"
    key                  = "my-squad-name.tfstate"
    arm_subscription_id  = "my-azure-subscription-id"
  }
}
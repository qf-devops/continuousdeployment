terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateaccount"
    storage_account_name = "terraformstateall"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}

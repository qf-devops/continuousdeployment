terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateaccount1"
    storage_account_name = "terraformstateall1"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}

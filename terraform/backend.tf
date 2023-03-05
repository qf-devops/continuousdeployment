terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateaccount"
    storage_account_name = "terraformstateall"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
    # use_msi              = true
    use_azuread_auth     = true
    # tenant_id         = "e80326a2-653b-4be1-9c42-fa8aa110e0f6"
    client_id         = "0c0d79da-94d1-4561-b9b6-73aa7498c27b" 
    subscription_id   = "31a90186-a097-4b71-9527-2ce644c05cb4"

  }
}

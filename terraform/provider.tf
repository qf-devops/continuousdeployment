# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}

  subscription_id   = "31a90186-a097-4b71-9527-2ce644c05cb4"
  tenant_id         = "e80326a2-653b-4be1-9c42-fa8aa110e0f6"
  client_id         = "0c0d79da-94d1-4561-b9b6-73aa7498c27b"
  client_secret     = "6uo8Q~hdkl5dQRcHx20lpe1s6imzY.NMj0xcHcR0"
}
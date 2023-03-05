data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "kv" {
  name                       = "myvoteappkeyvault"
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "premium"
  soft_delete_retention_days = 7

  access_policy {
    tenant_id = e80326a2-653b-4be1-9c42-fa8aa110e0f6
    object_id = 0c0d79da-94d1-4561-b9b6-73aa7498c27b

    key_permissions = [
      "Create",
      "Get",
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]
  }
}

resource "azurerm_key_vault_secret" "example" {
  name         = "secret-sauce"
  value        = "szechuan"
  key_vault_id = azurerm_key_vault.kv.id
}
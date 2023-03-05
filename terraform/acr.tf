resource "azurerm_container_registry" "acr" {
  name                = "votingappcontainerRegistrydev"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "Central India"
  sku                 = "Premium"
  admin_enabled       = false
  georeplications {
    location                = "North Europe"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
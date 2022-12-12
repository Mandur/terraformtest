provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "example" {
  name                = "kv-${var.name}-${var.stage}"
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}

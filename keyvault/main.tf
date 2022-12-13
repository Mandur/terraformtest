provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "example" {
  for_each = var.users
  name                = "kv-${var.name}-${var.stage}-${each.key}"
  location            = var.location
  resource_group_name = var.resource_group_name
    tenant_id           = var.tenant_id
  sku_name            = "standard"
}

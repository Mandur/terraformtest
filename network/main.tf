provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "default" {
  name                = var.virtual_network_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.vnet_resource_group_name
}

resource "azurerm_subnet" "aml_subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.vnet_resource_group_name
  virtual_network_name = azurerm_virtual_network.default.name
  address_prefixes     = var.training_subnet_address_space
  service_endpoints    = ["Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.Storage"]
  enforce_private_link_endpoint_network_policies = true
}
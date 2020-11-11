#Resources which will be created
# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "Ajinkya-RG2"
  location = "East US"
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = ["10.30.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_servers         = ["10.0.1.4"]
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.30.2.0/24"]
}
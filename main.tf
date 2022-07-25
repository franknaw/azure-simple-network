
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.names.product_group}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet_private" {
  name                 = "${var.names.product_group}-subnet-private"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes_private
}

resource "azurerm_subnet" "subnet_public" {
  name                 = "${var.names.product_group}-subnet-public"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes_public
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.product_name}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags = merge({
    Name = "${var.product_name}-vnet",
    },
    var.tags
  )
}

resource "azurerm_subnet" "subnet_private" {
  name                 = "${var.product_name}-subnet-private"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes_private
}

resource "azurerm_subnet" "subnet_public" {
  name                 = "${var.product_name}-subnet-public"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes_public
}

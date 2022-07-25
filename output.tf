output "vnet" {
  description = "Virtual network data object."
  value       = azurerm_virtual_network.vnet
}

output "subnet_public" {
  description = "Virtual network data object."
  value       = azurerm_subnet.subnet_public
}

output "subnet_private" {
  description = "Virtual network data object."
  value       = azurerm_subnet.subnet_private
}

output "firewall_subnet_id" {
  value = azurerm_subnet.firewall.id
}

output "management_subnet_id" {
  value = azurerm_subnet.management.id
}
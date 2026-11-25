output "firewall_pip_id" {
  value = azurerm_public_ip.firewall.id
}

output "management_pip_id" {
  value = azurerm_public_ip.management.id
}
resource "azurerm_firewall" "this" {
  name                = "afw-freight-sbx-uks-001"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "AZFW_VNet"
  sku_tier = "Standard"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.firewall_subnet_id
    public_ip_address_id = var.public_ip_id
  }

  management_ip_configuration {
    name                 = "management"
    subnet_id            = var.management_subnet_id
    public_ip_address_id = var.management_public_ip_id
  }
}
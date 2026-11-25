resource "azurerm_public_ip" "firewall" {
  name                = "pip-afw-freight-sbx-uks-001"
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}

resource "azurerm_public_ip" "management" {
  name                = "pip-afw-mgmt-sbx-uks-001"
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}
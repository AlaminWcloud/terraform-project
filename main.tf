module "nsg" {
  source = "./modules/nsg"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source = "./modules/network"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name

  web_nsg_id = module.nsg.web_nsg_id
  app_nsg_id = module.nsg.app_nsg_id
}

module "public_ip" {
  source = "./modules/public_ip"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "firewall" {
  source = "./modules/firewall"

  resource_group_name = var.resource_group_name
  location            = var.location

  firewall_subnet_id   = module.network.firewall_subnet_id
  management_subnet_id = module.network.management_subnet_id

  public_ip_id            = module.public_ip.firewall_pip_id
  management_public_ip_id = module.public_ip.management_pip_id
}
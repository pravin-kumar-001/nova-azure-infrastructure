module "resource_group" {
  source = "../../child_module/rg/main.tf"

  rgs = var.rgs
}

module "virtual_network" {
  source = "../../child_module/vnet/main.tf"

  vnets = var.vnets

  depends_on = [module.resource_group]
}

module "subnet" {
  source = "../../child_module/subnet/main.tf"

  subnets = var.subnets

  depends_on = [module.virtual_network]
}
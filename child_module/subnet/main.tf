data "azurerm_resource_group" "this" {
  for_each = var.subnets

  name = each.value.rgname
}

data "azurerm_virtual_network" "this" {
  for_each = var.subnets

  name                = each.value.vnetname
  resource_group_name = data.azurerm_resource_group.this[each.key].name
}

resource "azurerm_subnet" "this" {
  for_each = var.subnets

  name                 = each.value.subnetname
  virtual_network_name = data.azurerm_virtual_network.this[each.key].name
  resource_group_name  = data.azurerm_resource_group.this[each.key].name
  address_prefixes     = each.value.apf
}